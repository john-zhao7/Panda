#!/usr/bin/python3

import numpy as np
import  pandas as pd
from numpy.linalg import inv
from scipy.optimize import minimize
import rospy
import std_msgs
import time
import signal
import json


lead_speed = -1  # 前车车速
lead_distance = -1 # 前车与本车间距
host_veh_speed = -1
is_exit = False
deceleration = 0
# 读取Excel文件
# mpc_data = pd.read_excel('mpc.xlsx',engine ='openpyxl')


def signal_handler(signal, frame):
    global is_exit
    is_exit = True

#控制器输出controlInput与其延迟值（上一步的输出）相加，得到当前时刻的加速度acc。这个加速度acc再用于更新host_veh_speed，从而计算得到speed_des
class VehicleDynamics:
    def __init__(self, K, Ts,initial_speed):
        self.K = K                           #控制器增益
        self.Ts = Ts
        self.previous_u = 0                 #上一个时刻控制器输出(加速度）
        self.previous_speed = initial_speed  # 上一个时刻本车速度

    def update(self, controlInput):
        # 根据控制器输出和上一步的输出计算当前加速度
        acc = controlInput + self.previous_u
        if acc > 4:
            acc = 4
        elif acc < -6:
            acc = -6
        # 更新速度，速度 = 上一步速度 + 加速度 * 时间
        speed_des = self.previous_speed + acc * self.Ts
        if speed_des < 0:
            speed_des = 0
        if speed_des > 0:
            speed_des = min(speed_des,speed_global)

        # 更新存储的控制输入和速度值
        self.previous_u = acc
        self.previous_speed = speed_des
        # print("acc:",acc,"speed_des",speed_des)
        return speed_des

class DelayElement:  # 得出当前时刻的量和前一时刻的量，并输出的是前一时刻的量，当前时刻的量作为输入，缓存到该类的对象中
    def __init__(self, initial_value=0):
        self.previous_value = initial_value

    def step(self, current_value):
        delayed_value = self.previous_value
        self.previous_value = current_value
        return delayed_value
class SystemState:
    def __init__(self):
        # 假设状态是一个三维向量，分别对应lead_distance, host_veh_speed和speed_des
        self.state_delay_elements = [DelayElement() for _ in range(3)]  # 0为lead_distance,1为 host_veh_speed，2为speed_des
        # 单独处理lead_speed，因为它对应disturbance
        self.virtual_speed_delay_element = DelayElement()

    def step(self, virtual_distance, host_veh_speed, speed_des, virtual_speed):
        # 从当前值中计算stateChange   ，计算本时刻的状态与上一时刻的状态的差值
        stateChange = np.array([
            virtual_distance - self.state_delay_elements[0].step(virtual_distance),
            host_veh_speed - self.state_delay_elements[1].step(host_veh_speed),
            speed_des - self.state_delay_elements[2].step(speed_des)
        ])

        # 计算disturbance  前车车速作为干扰项单独处理，计算出每时刻前车车速的变化差值
        disturbance = np.array([virtual_speed-self.virtual_speed_delay_element.step(virtual_speed)])

        return stateChange, disturbance
# 使用示例
system_state = SystemState()

class IntegratedControlSystem:
    def __init__(self, K, Ts, predictionHorizon, stateWeight, inputWeight, A_continuous, B_continuous, C_continuous,initial_speed):
        self.vehicle_dynamics = VehicleDynamics(K, Ts, initial_speed)  # 创建VehicleDynamics的实例
        self.system_state = SystemState()  # 创建SystemState的实例

        self.K=K
        self.predictionHorizon = predictionHorizon
        self.stateWeight = stateWeight
        self.inputWeight = inputWeight
        self.samplingTime = Ts
        self.A_continuous = A_continuous
        self.B_continuous = B_continuous
        self.C_continuous = C_continuous

    def MPC_QP(self, currentState, stateChange, referenceState, disturbance):

        # 重构stateChange和currentState为二维数组以用于矩阵运算
        stateChange = stateChange.reshape(-1, 1)
        currentState = currentState.reshape(-1, 1)
        disturbance = disturbance.reshape(1, 1)


        # Compute the dimension of the state vector
        stateDim = self.A_continuous.shape[0]

        # Discretize the continuous-time system matrices using Euler method
        A_discrete = self.A_continuous * self.samplingTime + np.eye(stateDim)
        B_discrete = self.B_continuous * self.samplingTime
        C_discrete = self.C_continuous * self.samplingTime

        # Compute the dimension of the input vector
        inputDim = B_discrete.shape[1]

        Q_bar = np.kron(np.eye(self.predictionHorizon), self.stateWeight)
        R_bar = np.kron(np.eye(self.predictionHorizon), self.inputWeight)

        # Pre-compute certain operations to avoid repeated calculations and enhance efficiency
        Q_bar_transpose_times_Q_bar = Q_bar.T @ Q_bar
        R_bar_transpose_times_R_bar = R_bar.T @ R_bar

        # Use np.tile to create a vector by repeating the reference state for the entire prediction horizon
        # referenceStateAugmented = np.tile(referenceState, (self.predictionHorizon, 1))
        # 调整referenceStateAugmented的形状为(90, 3)
        referenceStateAugmented = np.tile(referenceState, (self.predictionHorizon, inputDim)).reshape(self.predictionHorizon * stateDim, inputDim)

        # Initialization of matrices that will represent the prediction model over the horizon
        stateMatrix = np.vstack([A_discrete, np.zeros(((self.predictionHorizon - 1) * stateDim, stateDim))])
        identityMatrix = np.vstack([np.eye(stateDim), np.zeros(((self.predictionHorizon - 1) * stateDim, stateDim))])
        controlMatrix = np.vstack([C_discrete, np.zeros(((self.predictionHorizon - 1) * stateDim, inputDim))])
        inputMatrix = np.zeros((self.predictionHorizon * stateDim, self.predictionHorizon * inputDim))

        # Temporary matrices to assist in constructing the prediction model
        tmpMatrix1 = A_discrete
        tmpMatrix2 = C_discrete

        # Build the prediction model matrices over the horizon
        # for i in range(1, self.predictionHorizon):
        #     rows = slice(i * stateDim, (i + 1) * stateDim)
        #     tmpMatrix1 = A_discrete + tmpMatrix1 @ A_discrete
        #     stateMatrix[rows, :] = tmpMatrix1
        #     identityMatrix[rows, :] = np.eye(stateDim)
        #     tmpMatrix2 = C_discrete + A_discrete @ tmpMatrix2
        #     controlMatrix[rows, :] = tmpMatrix2

        # Populate the input matrix over the horizon
        inputMatrix[:stateDim, :inputDim] = B_discrete
        tmpMatrix3 = B_discrete

        for i in range(1, self.predictionHorizon):
            rows = slice(i * stateDim, (i + 1) * stateDim)
            tmpMatrix1 = A_discrete + tmpMatrix1 @ A_discrete
            stateMatrix[rows, :] = tmpMatrix1
            identityMatrix[rows, :] = np.eye(stateDim)
            tmpMatrix2 = C_discrete + A_discrete @ tmpMatrix2
            controlMatrix[rows, :] = tmpMatrix2
            tmpMatrix3 = B_discrete + A_discrete @ tmpMatrix3
            inputMatrix[rows, :inputDim] = tmpMatrix3

        # Adjust the input matrix based on the prediction horizon
        for j in range(1,self.predictionHorizon):
            columns = slice(j * inputDim, (j + 1) * inputDim)
            start = j * stateDim
            stop = start + stateDim
            inputMatrix[start:stop, columns] = inputMatrix[:stop - start, :inputDim]

        if controlMatrix.shape[1] != disturbance.shape[0]:
            raise ValueError('Dimensions of controlMatrix and disturbance do not match for multiplication')


        # Compute the prediction error over the horizon
        errorPrediction = referenceStateAugmented - stateMatrix @ stateChange - identityMatrix @ currentState - controlMatrix @ disturbance

        # Compute the optimal control matrix using the pre-computed matrices
        controlMatrixOptimal = inputMatrix.T @ Q_bar_transpose_times_Q_bar @ inputMatrix + R_bar_transpose_times_R_bar

        # Solve the quadratic program to determine the change in control input over the horizon
        deltaControl = np.linalg.solve(controlMatrixOptimal, inputMatrix.T @ Q_bar_transpose_times_Q_bar @ errorPrediction)

        # Return the first control input from the delta control sequence
        controlInput = deltaControl[:inputDim]

        # print("controlinput:",controlInput)

        return controlInput

    def step(self, target_distance, virtual_distance, host_veh_speed, virtual_speed):
        global speed_des
        global deceleration

        brake_test = rospy.Publisher('/Delta_mpc_to_wire_control', std_msgs.msg.String, queue_size=10)  # 输出给线控,目标速度和减速度
        target_value = {}

        # 使用VehicleDynamics对象内部的previous_speed
        speed_des = self.vehicle_dynamics.previous_speed

        # 计算MPC的参考状态和当前状态
        currentState = np.array([virtual_distance, host_veh_speed, speed_des])
        referenceState = np.array([target_distance, speed_des, virtual_speed])
        # stateChange = system_state.step(lead_distance, host_veh_speed, speed_des, lead_speed)[0]
        # disturbance = system_state.step(lead_distance, host_veh_speed, speed_des, lead_speed)[1]

        # 从SystemState实例中获取stateChange和disturbance
        stateChange, disturbance = self.system_state.step(virtual_distance, host_veh_speed,speed_des, virtual_speed)

        # 调用MPC控制器计算控制输入
        controlInput= self.MPC_QP(currentState, stateChange, referenceState, disturbance)[0][0]

        # 更新速度并获取期望速度
        speed_des = self.vehicle_dynamics.update(controlInput)

        # 返回离散控制器的输出，可以被用作下一次迭代的输入
        # speed_des = speed_des*3.6
        speed_des = 1.2*speed_des

        target_value = {"target_speed": speed_des,
                        'deceleration': deceleration}  # , "target_acc": acc}
        brake_test.publish(json.dumps(target_value))

        return speed_des, controlInput



# 初始化整合控制系统
integrated_system = IntegratedControlSystem(
     # 控制器增益和采样时间
     K = 1.0,
     Ts = 0.01,
    predictionHorizon=12,
    stateWeight=np.array([[800, 0, 0], [0, 72, 0], [0, 0, 72]]),
    inputWeight=100,
    A_continuous=np.array([[0, -1, 0], [0, -1/1.25, 1/1.25], [0, 0, 0]]),         # 需要提供tau的值
    B_continuous=np.array([[0], [0], [1]]),
    C_continuous=np.array([[1], [0], [0]]),
    initial_speed =  0 #25.0000019073486
)

# 进行控制决策
# 假设您有以下变量：
# target_distance,lead_distance, host_veh_speed, lead_speed
# target_distance =40  # 目标距离
# virtual_distance = 50      # 前车距离
# host_veh_speed =11     # 本车速度
# virtual_speed = 40         # 前车速度
# speed_plan
# speed_global = speed_plan
speed_global = 15
results2 = []
# # 假设进行10次迭代
# num_iterations = 10
#
# for _ in range(num_iterations):
#     # 调用step函数进行一次控制迭代
#     speed_des, controlInput = integrated_system.step(
#         target_distance=target_distance,
#         virtual_distance=virtual_distance,
#         host_veh_speed=host_veh_speed,
#         virtual_speed=virtual_speed
#     )
#
#     # 打印每次迭代的结果
#     print(f"Iteration {_ + 1}: speed_des = {speed_des}, controlInput = {controlInput}")
#
#     # 在下一次迭代中更新输入条件，可以根据需要更改这些值
#     target_distance -= 5
#     virtual_distance -= 15
#     host_veh_speed -= 2
#     virtual_speed -= 10


#单步验证已通过
# speed_des, controlInput = integrated_system.step(
#        target_distance=target_distance,
#        lead_distance=lead_distance,
#        host_veh_speed=host_veh_speed,
#        lead_speed=lead_speed
#    )
# print("speed_des:",speed_des,"\n","controlInput:",controlInput,"\n")

# 遍历Excel数据并执行迭代
# for index, row in mpc_data.iterrows():
#     # 从Excel文件中读取参数
#     target_distance = row['target_distance']
#     virtual_distance = row['virtual_distance']
#     host_veh_speed = row['host_veh_speed']
#     virtual_speed = row['virtual_speed']

#     # 执行一次控制迭代
#     speed_des ,controlInput= integrated_system.step(
#         target_distance=target_distance,
#         virtual_distance=virtual_distance,
#         host_veh_speed=host_veh_speed,
#         virtual_speed=virtual_speed
#     )

#     # 记录每次迭代的结果
#     result = {
#         "Iteration": index + 1,
#         "speed_des": speed_des,
#         "controlinput": controlInput,
#     }
#     results2.append(result)

#     # 打印每次迭代的结果
#     print(f"Iteration {index + 1}: speed_des = {speed_des}")

#     results_df = pd.DataFrame(results2)
#     results_df.to_csv("results2.csv", index=False)



# 拿到本车车速回调函数
def callback_get_carspeed(msg):
    global host_veh_speed  # 自车车速
    # print("这个是惯导",msg)
    try:
        GNSS_data = json.loads(msg.data)
        host_veh_speed = GNSS_data["Speed"]
        # print(f"self_speed:{host_veh_speed}")
    except:
        # print("未接收到惯导信息")
        pass

# 拿到前车车速,距离回调函数
def obj_final_front_veh_callback(msg):
    global lead_speed  # 前车车速
    global lead_distance  # 前车与本车间距

    # print(msg,"这个是前车")
    try:
    # 获取接收到的字符串消息
        obj_final_front_veh_dict = json.loads(msg.data)
        # 将字符串转换为列表
        # obj_final_front_veh_list = obj_final_front_veh_str.split(',')
        lead_speed = obj_final_front_veh_dict['front_obj']['Speed']

        # lead_speed =0
        lead_distance = obj_final_front_veh_dict['front_obj']['s']
        # lead_distance =  255
        print(f"lead_speed:{lead_speed},lead_distance:{lead_distance}")
    except:
        lead_speed = 100
        lead_distance = 200
        # lead_speed = 40
        # lead_distance = 40
        print("未接收到前车信息")
        pass



def mpc_cal():
    global host_veh_speed
    global lead_speed  # 前车车速
    global lead_distance  # 前车与本车间距
    # 计算mpc逻辑
    speed_des ,controlInput= integrated_system.step(
    target_distance = 20,
    virtual_distance=lead_distance,
    host_veh_speed=host_veh_speed,
    virtual_speed=lead_speed)
    
    # pub.publish(speed_des)

def brake_control(speed_finalcontrol_m_s, host_v_act_m_s, lead_veh_distance,leadspeed):
    # 初始化输出变量
    target_dec_ms2 = 0
    # 第一个加法块的计算
    delta_speed = speed_finalcontrol_m_s - host_v_act_m_s
    # 第一个饱和块，这里假设饱和上下限为0和-1
    delta_speed_sat1 = max(min(2 * (speed_finalcontrol_m_s - host_v_act_m_s), 0), -1)
    # 第一个开关块
    if delta_speed > 0:
        switch_output1 = 0
    else:
        switch_output1 = delta_speed_sat1  # 或者其它您模型中定义的值
    # 第二个饱和块
    delta_speed_sat2 = max(min(2 * (leadspeed - host_v_act_m_s), 0), -2)
    # 第二个开关块
    if lead_veh_distance > 10:  # 假设10是您模型中定义的阈值
        switch_output2 = 0
    else:
        switch_output2 = delta_speed_sat2  # 或者其它您模型中定义的值
    # 第二个加法块的计算
    target_dec_ms2 = switch_output1 + switch_output2
    
    return target_dec_ms2


def callback_get_SpeedCtrl(msg):
    global speed_plan
    control_msg = json.loads(msg.data)
    speed_plan =control_msg["PointVel"]
    pass

def main():
    rospy.init_node('subscriber_node')
    global host_veh_speed 
    global lead_speed  # 前车车速
    global lead_distance  # 前车与本车间距
    global speed_des
    global lead_distance 
    global deceleration
    # host_veh_speed = None
    # lead_speed = None 
    # lead_distance = None 
    signal.signal(signal.SIGINT, signal_handler)
    rospy.Subscriber('/lidar_roi_obj/from_Decision_to_PLan', std_msgs.msg.String, obj_final_front_veh_callback)
    rospy.Subscriber('/ztbus/location', std_msgs.msg.String,callback_get_carspeed)
    pub = rospy.Publisher('/speed_des_topic', std_msgs.msg.String, queue_size=10)
    rospy.Subscriber('/To_WireContorl_publisher', std_msgs.msg.String,callback_get_SpeedCtrl)

    start_time = time.time()
    while not is_exit :
        mpc_cal()
        deceleration = brake_control(speed_des,host_veh_speed, lead_distance,lead_speed)
        #print(lead_distance,'*'*10)
        #time.sleep(0.01)
        end_time = time.time()

        start_time = end_time
        
if __name__ =="__main__":
    main()


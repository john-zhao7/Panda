#!/usr/bin/env python3
#coding=utf-8
import sys,os
# 加入库路径，实现vs调试功能
script_dirc = os.path.dirname(os.path.abspath(__file__))
relative_path = '../../../devel/lib/python3/dist-packages'
library_path = os.path.join(script_dirc, relative_path)
sys.path.append(library_path)

import math
import time
import rospy
import signal
import geometry_msgs.msg
import std_msgs.msg
import sys
from car_interfaces.msg import PathSpeedCtrlInterface
from car_interfaces.msg import GlobalPathPlanningInterface, FusionInterface, GpsImuInterface, CarOriInterface
from car_interfaces.msg import HmiStartEndPointInterface
from hmi.msg import NodePointsInterface

import os
import yaml
import path_control
import speed_control
from std_msgs.msg import String
import json

from sklearn.neighbors import KDTree
import threading


script_directory = os.path.dirname(os.path.abspath(__file__))
image_relative_path = 'lib'
icon_path = os.path.join(script_directory, image_relative_path)

sys.path.append(icon_path)
import prcolor,readMap


Srch_count = 0  # 寻找最近点上下文关联
is_exit = False
CTE = 0
diffCTE = 0
dHead = 0
dHead_filtered = 0
diffdHead = 0
dspeed = 0
diffspeed = 0
mark = 0
num_l = 0

distance_list = []
num_s = 0

now_speed = 0

Map = []
path_list_obj_1=[]
path_list1=[]
end_point = []

path_list_obj = []       # 全局规划路径点_列表类表示
flag_con = 0
Brake = False
Brake_end = False
plan_data_path_list = []
tarPath = []
sequence = []
distance_list_compare = []
Brake_stop = True
cls = []#红绿灯list

insec_point = []
station_point = []

kdtree = None
ego_content = {}
trajectory = []
flag_point = 0
# 获取当前脚本文件的所在目录
script_directory = os.path.dirname(os.path.abspath(__file__))
# 图片文件相对于脚本文件的路径
relative_path = "../config/ControlParameter.yaml"
# 构建图片文件的完整路径
file_path = os.path.join(script_directory, relative_path)


try:
    with open(file_path, 'r') as file:
        yaml_data = yaml.load(file, Loader=yaml.FullLoader)

except FileNotFoundError:
    print("ControlParameter.yaml 文件不存在")

# 回调flag初始化
gps_flag = False
plan_flag = False
camera_flag = False
hmi_flag = False
node_flag = False

min_distance = 10000


Control_msg_pub = rospy.Publisher('/To_WireContorl_publisher', std_msgs.msg.String, queue_size=10)
# Data_msg_pub = rospy.Publisher('data_publisher', std_msgs.msg.String, queue_size=10)
pub_control = rospy.Publisher("path_speed_tracking_data", PathSpeedCtrlInterface, queue_size = 10) # 话题名称


class Road:
    def __init__(self):
        self.id = -1
        self.lane = []
        pass

#lane id, attr and pos info
class Lane:
    def __init__(self):
        self.id = -1
        self.left = -1
        self.right = -1
        self.spd = -1
        self.width = -1
        self.points = []
        pass


# 接收全局规划的消息，主要是路径点集合path_list = msg.routedata
def global_path_planning_data_callback(msg):
    path_list = []
    # global pathid
    # global path_last_point
    # global startpoint
    global end_point
    global path_list_obj
    global flag_con 
    global mark
    global trajectory
    global plan_flag
    global insec_point



    path_list_obj1 = []
    # print("id",pathid)
    # 路径点集合为routedata，每次接收到250个数据，5个为一组
    # routedata list [x, y, yaw, speed, curvity]
    path_list = msg.routedata
    path_list = [float(num) for num in path_list]
    # end_point = path_list[-1]
    insec_point = msg.incppoint
    
    class PathItem:
        def __init__(self, x, y, head, speed, curva):
            self.x = x
            self.y = y
            # if head < 0:         # plan 发过来的是-180～180，转0～360
                # head = head + 360  # cyun [deg]
            self.head = head   # cyun [deg]
            self.speed = speed               
            self.curva = curva
    # 将一维数组转换为对象列表
    group_size = 5
    
    for i in range(len(path_list) // group_size):
        start_index = i * group_size
        end_index = start_index + group_size
        group = path_list[start_index:end_index]
        path_item = PathItem(*group)
        path_list_obj1.append(path_item)
    end_point = msg.endpoint
    path_list_obj = path_list_obj1
    # prcolor.prPink("path_list_obj",path_list_obj)
    # path_list_obj_1 = []
    x_list = path_list[::5]  # 从索引0开始，每隔5个元素取一个
    y_list = path_list[1::5]  # 从索引1开始，每隔5个元素取一个
    # print("leneeee",len(x_list))
    trajectory = [list(coord) for coord in zip(x_list, y_list)]
    plan_flag = True

#lat, lon and head
class Pos:
    def __init__(self, x, y, head):
        self.x = x
        self.y = y
        self.head = head
        pass

class Point:
    def __init__(self, x, y, head):
        self.x = x
        self.y = y
        self.head = head
        pass

def signal_handler(signal, frame):
    global is_exit
    is_exit = True

# 计算两点之间的距离
def calculate_distance(a,b,c,d):
    distance = math.sqrt((a - c)**2 + (b - d)**2)
    return distance


# 接收全局规划的消息，主要是路径点集合path_list = msg.routedata
def camera_data_callback(msg):
    global cls
    global camera_flag

    content = json.loads(msg.data)
    cls = content["cls"]
    # print("cls  ok")
    camera_flag = True


# def hmi_start_end_point_data_callback(msg):
#     #在函数里面global
#     global roadid
#     global stationid
#     global flag_hmi #hmi 发送成功，恒=1
#     global hmi_flag

#     roadid = msg.roadid
#     stationid = msg.stationid
#     flag_hmi = msg.flag
#     hmi_flag = True
    # prRed("hmi ok")



# def node_point_data_callback(msg):
#     global station_point
#     global insec_point
#     global node_flag

#     #NOTE 红路灯路口的站点信息
#     station_point = msg.stationpoint
#     insec_point = msg.incppoint
    
#     station_point = insec_point
#     node_flag = True


def callback_node_point():
#     global station_point
    global insec_point
    
    # prcolor.prRed(insec_point)   
    insec_list = []
    #格式：(527445.0939495077, 4316074.9618551005, 527458.8679815506, 4316084.9185884865, 527452.8679815506, 4316082.9185884865)
    for i in range(0, len(insec_point), 2):
        point = [insec_point[i], insec_point[i+1]]
        insec_list.append(point)
#     station_list = []
#     insec_list = []
#     try:
#         for i in range(0, len(station_point), 2):
#             point = [station_point[i], station_point[i+1]]
#             station_list.append(point)

#         # 路口
#         for i in range(0, len(insec_point), 2):
#             point = [insec_point[i], insec_point[i+1]]
#             insec_list.append(point)  
#         # insec_list = [[526058.9815129812, 4316157.066158535],[26046.18759496398,16109.86073407996]]
#     except:
#         print("路口信息未知")

    return insec_list


def call_back_GNSS(msg):
    global ego_content
    global path_list_obj
    global Brake
    global cls
    global station_point
    global mark
    global Brake_end
    global gps_flag

    GNSS_data = json.loads(msg.data)
    ego_content['now_pos_x'] = GNSS_data['UTM_x']
    ego_content['now_pos_y'] = GNSS_data['UTM_y']
    ego_content['now_pos_head'] = GNSS_data["Head"]
    ego_content['now_speed'] = GNSS_data["Speed"]
    gps_flag = True

def Dhead_filter():
    global dHead_filtered
    global dHead

    tau_filter = 0.05
    tau_discrete = 0.02
    dHead_filtered = dHead_filtered + tau_discrete / tau_filter * (dHead - dHead_filtered)

    return dHead_filtered


##不再使用。
# def InsSrch(path, pos):
#     global Srch_count
#     # Srch_count = 0
#     curDis = 0
#     mid = 0
#     # calculate distance from current point to map
#     def calcDis(m, pos):
#         dis = math.sqrt(math.pow(path[min(m,len(path)-1)].x - pos.x, 2) + math.pow(path[min(m,len(path)-1)].y - pos.y, 2))
#         return dis

#     # compare if dheading is out of range
#     def cmpHead(n):
#         dheading = path[min(n, len(path)-1)].head - pos.head
#         if math.fabs(dheading) > 150 and math.fabs(dheading) < 200:
#             return True
#         return False

#     # 第k次找到的最近点索引是mid，第k+1次从mid开始寻找，范围是mid~mid+50
#     low = Srch_count
#     high = max(Srch_count+5 , len(path) - 1 ) #防止超出索引
#     count = 0

#     while (low < high):
#         count += 1
#         low = int(low)
#         high = int(high)
#         mid = int((low + high) / 2)
#         # print("mid",mid)

#         l_dis = calcDis(low, pos)
#         m_dis = calcDis(mid, pos)
#         h_dis = calcDis(high, pos)

#         # check dheading
#         if count > 50:
#             curDis = 9999
#             break
#         if cmpHead(low):
#             low = mid
#             continue
#         if cmpHead(high):
#             high = mid
#             continue

#         if (l_dis < h_dis and high - mid > 0):
#             high = mid
#         if (h_dis < l_dis and mid - low > 0):
#             low = mid
#         if mid == int((low + high) / 2):
#             if l_dis <= m_dis and l_dis <= h_dis:
#                 curDis = l_dis
#                 mid = low
#                 break
#             if m_dis <= l_dis and m_dis <= h_dis:
#                 curDis = m_dis
#                 break
#             if h_dis <= l_dis and h_dis <= m_dis:
#                 curDis = h_dis
#                 mid = high
#                 break
#     #mid += 5

#     dHead = path[mid].head - pos.head
#     mark = mid
#     midcurva = path[mid].curva
#     vel = path[mid].speed
#     # print("mid:", mid)
#     Srch_count = mid
#     # print(mid)
#     # print(Srch_count,"srch_count")
#     return curDis, dHead, mark



def caculate_cte_wheel_angle():
    global ego_content
    # global ego_content['now_pos_x']
    # global ego_content['now_pos_y']
    # global ego_content['now_pos_head']
    # global now_speed
    global mark
    global CTE
    global dHead
    global diffCTE
    global diffdHead
    global plan_data_path_list
    global now_speed
    global tarPath

    global yaml_data
    global path_list_obj
    global trajectory
    global min_distance

    if len(path_list_obj)!=0:

        perception_mark = yaml_data['perception_mark'] # 预瞄点的数量
        # tar_speed = 0.8 * now_speed + 0.2 * yaml_data['TargetSpeed']

        diffCTE = -CTE
        diffdHead = -dHead

        # plan_data_path_list = path_list_obj
        curPos_kd = [ego_content['now_pos_x'], ego_content['now_pos_y']]
        curPos = Point(ego_content['now_pos_x'], ego_content['now_pos_y'], ego_content['now_pos_head'])
        kdtree = KDTree(trajectory) ##其实一直为10
        distances, indices = kdtree.query([curPos_kd], k=1)  #甚至不用找，一直为10  ##在全局中招mark点，不会因为轨迹形状找错
        mark = indices[0][0]
        # nearest_point = plan_data_path_list[mark]
        curDis = float(distances)
        # curDis,dheading,mark = InsSrch(plan_data_path_list, curPos)
        mark_cood = Point(path_list_obj[mark].x, path_list_obj[mark].y, path_list_obj[mark].head)
        point_m=(path_list_obj[mark].x, path_list_obj[mark].y)
        prcolor.prRed(f"mark_local_index is {mark},curDis is {round(curDis, 3)} m ,point is {point_m}")
        # prcolor.prRed("len_path_list_obj",len(path_list_obj))
        if curDis > 99:
            # adddddd = 1
            print("curDis is {curDis},please check map or gps")
            # print('dis to closest point is {0}, dhead is {1}, step to next path'.format(curDis))

        if mark - 2 > 0:
            ptB = Point(path_list_obj[mark - 2].x, path_list_obj[mark - 2].y, path_list_obj[mark - 2].head)
            disLeft = math.sqrt(math.pow(curPos.x - ptB.x, 2) + math.pow(curPos.y - ptB.y, 2))
        else:
            ptB = Point(path_list_obj[mark+2].x, path_list_obj[mark+2].y,
                        path_list_obj[mark+2].head)
            disLeft = math.sqrt(math.pow(curPos.x - ptB.x, 2) + math.pow(curPos.y - ptB.y, 2))

        if mark - 2 > 0:
            ptC = Point(path_list_obj[min((mark + 2),len(path_list_obj)-1)].x, path_list_obj[min((mark + 2),len(path_list_obj)-1)].y, path_list_obj[min((mark + 2),len(path_list_obj)-1)].head)
            disRight = math.sqrt(math.pow(curPos.x - ptC.x, 2) + math.pow(curPos.y - ptC.y, 2))
        else:
            ptC = Point(path_list_obj[min((mark + 4),len(path_list_obj)-1)].x, path_list_obj[min((mark + 4),len(path_list_obj)-1)].y, path_list_obj[min((mark + 4),len(path_list_obj)-1)].head)
            disRight = math.sqrt(math.pow(curPos.x - ptC.x, 2) + math.pow(curPos.y - ptC.y, 2))

        try:
            dHead = curPos.head - path_list_obj[min((mark + perception_mark) ,len(path_list_obj)-1)].head
            # dHead = curPos.head - plan_data_path_list[mark + 8].head  # forward distance
        except:
            dHead = curPos.head - path_list_obj[mark].head
        if dHead < -180:
            dHead = dHead + 360
        if dHead > 180:
            dHead = dHead - 360
        dHead = Dhead_filter()
        # dspeed = tar_speed - now_speed

        if disLeft < disRight:
            dx = mark_cood.x - ptB.x
            dy = mark_cood.y - ptB.y
            Rx = curPos.x - ptB.x
            Ry = curPos.y - ptB.y
        else:
            dx = ptC.x - mark_cood.x
            dy = ptC.y - mark_cood.y
            Rx = curPos.x - mark_cood.x
            Ry = curPos.y - mark_cood.y

        if dHead < -270:
            dHead = 360 + dHead
        if dHead > 270:
            dHead = dHead - 360
        CTE = (Ry * dx - Rx * dy) / ((dx ** 2 + dy ** 2) ** 0.5+0.0000001)

        diffCTE = diffCTE + CTE
        diffdHead = diffdHead + dHead
        # diffspeed = diffspeed + dspeed

        if diffCTE > 0.02:
            diffCTE = 0.02
        if diffCTE < -0.02:
            diffCTE = -0.02

        # print("CTE",CTE,"dHead",dHead)
        control_msg = {}
        offset = 0   # change the road

        #FIXME 现在的控制逻辑比较老
        wheelAngle = path_control.pathControl(CTE + offset, diffCTE, dHead, diffdHead, yaml_data)
        control_msg["wheelAngle"] = wheelAngle
        control_msg["PointVel"] = path_list_obj[mark].speed
        control_msg["CTE"] = CTE
        control_msg["dHead"] = dHead
        control_msg["Brake"] = Brake
        control_msg["Brake_end"] = Brake_end
        control_msg["target_speed"] = path_list_obj[mark].speed
        control_msg["min_distance"] = min_distance
        control_msg["now_speed"] = ego_content["now_speed"]
        a = ego_content["now_speed"]
        control_msg["deceleration"] = 0

        msg = PathSpeedCtrlInterface()
        msg.Target_steering_angle = wheelAngle
        msg.CTE = CTE
        msg.dHead = dHead
        
        prcolor.prBlue("CTE={},dHead={},wheelAngle={},now_speed is {} m/s".format("{:.4f}".format(CTE),"{:.4f}".format(dHead),"{:.4f}".format(wheelAngle),a))
        return control_msg,msg
    


def Brake_light_inc_end():
    global is_exit
    global Brake_end
    global Brake
    global path_list_obj
    global end_point
    global ego_content
    global cls
    global min_distance
    global distance_list
    global camera_flag 
    global gps_flag
    global plan_flag
    global num_l
    global num_s
    global distance_list_compare
    global Brake_stop
    rospy.logwarn("********等待相机消息********")
    # prcolor.prBlue(plan_flag)

    while not gps_flag or not plan_flag :#or not camera_flag:
        rospy.sleep(0.1)
    #     # prcolor.prBlue(111,plan_flag)
 
    while not is_exit:
        start_time = time.time()

        #NOTE 到终点的逻辑 注意现在路口（红绿灯）与终点没有关系了
        dis = calculate_distance(ego_content['now_pos_x'],ego_content['now_pos_y'],end_point[0],end_point[1])
        # print("ego_content",ego_content)
        prcolor.prGreen("距离本路段终点还有{}m".format("{:.4f}".format(dis)))
        if dis <= 10: 
            # 先给刹车：
            Brake_end = True
        else:
            Brake_end = False

        # 2.红绿灯逻辑
        insec_list = callback_node_point()

        target_coords = [ego_content['now_pos_x'], ego_content['now_pos_y']]
        min_distance = math.inf
        for coords in insec_list:
            distance = math.sqrt((coords[0] - target_coords[0])**2 + (coords[1] - target_coords[1])**2)
            if distance < min_distance:
                # if (min_distance - distance )> -10 or min_distance - distance < 10:
                #     distance_list = []
                min_distance = distance    
        prcolor.prGreen("最近的红路灯路口距离为{}，显示为{}".format("{:.4f}".format(min_distance),cls))
        

        if len(cls) != 0:
            
            num_l += 1
            if num_l >= 5:
                
                num_s += 1
                if num_s >= 5:
                    if len(distance_list) >= 5:
                        distance_list.pop(0)
                    distance_list.append(round(min_distance , 2))
                    num_s = 0

                try :
                    if cls[0] == 1:
                        light = "绿灯"
                    elif cls[0] == 0:
                        light = "红灯"
               

                    # print(f"最近的红路灯路口距离为{min_distance}，显示为{light}")
                    if cls[0] == 0:
                        #NOTE 刹车区间需要测试
                        if min_distance < 25:  # 红灯且5~10之间就刹车
                            
                            if len(distance_list) == 5:
                                distance_list_compare = sorted(distance_list)

                                if distance_list_compare == distance_list and distance_list[0] != distance_list[1]:
                                    Brake = False
                                  
                                else:
                                    Brake = True
                                   
                            # if not Brake_stop:
                            #     Brake = True
                            # else:
                            #     Brake = False
                                                      
                            if cls[0]== 1:
                                num_l = 0
                    else:
                        Brake = False
                        # print("a"*8)
                except :
                    pass
                    
                prcolor.prRed(Brake ,distance_list,"*"*8)
        time.sleep(0.01)
        end_time = time.time()
        # process_time = end_time - start_time
        prcolor.prYellow("control_threading_brake_time:{},Brake is {}".format("{:.3f}".format(end_time-start_time),Brake))

def main():
    global CTE
    global Brake_end
    global CTE
    global diffCTE
    global dHead
    global diffdHead
    global yaml_data
    global diffspeed
    global dspeed
    global Brake
    global path_list_obj
    global mark
    global Brake_end
    global is_exit

    global insec_point
    global station_point

    global gps_flag
    global plan_flag
    global camera_flag
    global hmi_flag
    global node_flag 


    signal.signal(signal.SIGINT, signal_handler)
    rospy.init_node('control', anonymous=False)
    rospy.Subscriber('/ztbus/location', std_msgs.msg.String, call_back_GNSS)
    rospy.Subscriber("global_path_planning_data", GlobalPathPlanningInterface, global_path_planning_data_callback)
    rospy.Subscriber("camera_data", String, camera_data_callback)
    # rospy.Subscriber("hmi_start_end_point_data", HmiStartEndPointInterface, hmi_start_end_point_data_callback)
    # rospy.Subscriber("node_points_data", NodePointsInterface, node_point_data_callback)

    rospy.logwarn("control start success")
    rospy.logwarn("********等待规划层消息********")
    rospy.logwarn("********等待gps消息********")


    brake_end_light_threading = threading.Thread(target=Brake_light_inc_end)
    brake_end_light_threading.start()

    #NOTE acc逻辑待加入

    while not plan_flag or not gps_flag: #  and not camera_flag :
        rospy.sleep(0.1)

    while not is_exit: #  and not camera_flag :
        start_time =  time.time()

        control_msg,msg = caculate_cte_wheel_angle()
        Control_msg_pub.publish(json.dumps(control_msg))
        pub_control.publish(msg)

        time.sleep(0.01)

        end_time = time.time()

        prcolor.prYellow("control_main_time: ", "{:.3f}".format(end_time-start_time))

if __name__ == '__main__':
    main()

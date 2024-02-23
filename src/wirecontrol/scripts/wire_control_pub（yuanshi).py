#!/usr/bin/python3
# -*- coding: utf-8 -*-

import can
import cantools
import rospy
import time
import std_msgs.msg
from car_interfaces.msg import CarOriInterface,PathSpeedCtrlInterface
import os
import signal
import json
import threading
import sys

# 获取当前脚本文件的所在目录
script_directory = os.path.dirname(os.path.abspath(__file__))
# 图片文件相对于脚本文件的路径
image_relative_path = 'lib'
# 构建图片文件的完整路径
icon_path = os.path.join(script_directory, image_relative_path)
# absolute_path = os.path.abspath(icon_path)

# print(absolute_path)
sys.path.append(icon_path)

import prcolor
now_speed=0
brake_flag = False
Brake = False
Brake_end = False

flag_steer = 0
q_num = 0
quit_mod = False
is_exit = False
start_flag = False
target_vel = 0#17  #车辆速度设置
target_steer_vel = 50  # 车辆方向盘转角速度
num = 0
bus_vel = 0
veh_cte = 0
num_s = 0
vel_plan = 0
vel_plan_1 = 0

flag_end = 0 #终点停车只执行一次

flag_spd_start = 1#状态转换
flag_spd_start_brake = 1#状态转换
num_em = 0
num_light = 0
num_back = 0

flag_wire = 0
deceleration = 0
target_wheel = 0
import os
import sys
wheel_filtered = 0

# from base_function import *


def signal_handler(signal, frame):
    global is_exit
    is_exit = True

def wheel_filter():
    global wheel_filtered
    global target_wheel

    tau_filter = 0.05
    tau_discrete = 0.02
    wheel_filtered = wheel_filtered + tau_discrete / tau_filter * (target_wheel - wheel_filtered)

    return wheel_filtered

messages_1 = [      # 发送给整车VCU的报文类型
    {
        'message_id': 0x0C01D0A5,    # 车辆方向盘转向信息报文
        'message_name': 'steering_control',
        'signals': {
            'target_steering_angle': 0,     # 车辆方向盘角度，两字节表示
            'target_steering_mod': 1,       # 车辆转向控制模式，4 bit表示，置1为转角控制模式，若手动后，则置5后再置1
            'DCU_valid': 1,                 # VCU状态，1为正常，0为不正常，1 bit表示
            'steering_control_valid': 1,    # 车辆转角状态，1为正常，0不正常，1 bit表示
            'target_steering_torque': 0,    # 转向叠加扭矩信号，目前可以先取128中间值，一字节表示
            'target_steering_velocity': target_steer_vel,  # 方向盘目标角速度，5-54对应50 ~ 540°/s，分辨率为10，一字节表示
            'steering_msg_life': 0,         # 该消息发送的生命周期
        }
    },
    {
        'message_id': 0x0C02D0A5,   # 车辆qudong信息报文
        'message_name': 'drive_control',
        'signals': {
            'target_velocity': target_vel,
            'target_acceleration': 0,
            'target_direction': 1,
            'fault_code': 0,
            'drive_msg_life': 0,
        }
    },
    {
        'message_id': 0x0C03D0A5,  # 车辆zhidong
        # 信息报文
        'message_name': 'barke_control',
        'signals': {
            'target_deceleration': 0,
            'XBR2_EBI_Mode': 0,
            'XBR2_Priority': 0,
            'XBR2_Ctrl_Mode': 0,
            'XBR2_message_counter': 0,
            'XBR2_checksum': 0,
        }
    },
    {
        'message_id': 0x0C04D0A5,  # 车辆整车速度信息报文
        'message_name': 'body_control',
        'signals': {
            'mode_disp': 0,
            'body_state': 1,
            'turning_lighting_control': 0,
            'high_low_beam_control': 2,
            'hazard_lights_control': 0,
            'backup_light_control': 0,
            'width_lamp_control': 0,
            'wiper_wash_switch' : 0,
            'front_door_control': 0,
            'middle_door_control': 0,
            'horn_control' : 0,
        }
    },
    {
        'message_id': 0x0C08D0A5,  # 车辆整车速度信息报文
        'message_name': 'parking_control',
        'signals': {
            'longterm_park_req': 0,
            'temp_park_req': 0,
            'park_control_mode': 0,
            'park_work_mode': 0,
            'park_air_pressure': 0,
            'temp_park_pressure': 0,
            'park_msg_checksum': 10,
        }
    },
]
messages_2 = [      # 发送给整车VCU的报文类型
    {
        'message_id': 0x0C01D0A5,    # 车辆方向盘转向信息报文
        'message_name': 'steering_control',
        'signals': {
            'target_steering_angle': 0,     # 车辆方向盘角度，两字节表示
            'target_steering_mod': 5,       # 车辆转向控制模式，4 bit表示，置1为转角控制模式，若手动后，则置5后再置1
            'DCU_valid': 1,                 # VCU状态，1为正常，0为不正常，1 bit表示
            'steering_control_valid': 1,    # 车辆转角状态，1为正常，0不正常，1 bit表示
            'target_steering_torque': 0,    # 转向叠加扭矩信号，目前可以先取128中间值，一字节表示
            'target_steering_velocity': 300,  # 方向盘目标角速度，5-54对应50 ~ 540°/s，分辨率为10，一字节表示
            'steering_msg_life': 0,         # 该消息发送的生命周期
        }
    },
    {
        'message_id': 0x0C02D0A5,   # 车辆qudong信息报文
        'message_name': 'drive_control',
        'signals': {
            'target_velocity': 0,
            'target_acceleration': 0,
            'target_direction': 1,
            'fault_code': 0,
            'drive_msg_life': 0,
        }
    },
    {
        'message_id': 0x0C03D0A5,  # 车辆zhidong
        # 信息报文
        'message_name': 'barke_control',
        'signals': {
            'target_deceleration': 0,
            'XBR2_EBI_Mode': 0,
            'XBR2_Priority': 0,
            'XBR2_Ctrl_Mode': 0,
            'XBR2_message_counter': 0,
            'XBR2_checksum': 0,
        }
    },
    {
        'message_id': 0x0C04D0A5,  # 车辆整车速度信息报文
        'message_name': 'body_control',
        'signals': {
            'mode_disp': 0,
            'body_state': 1,
            'turning_lighting_control': 0,
            'high_low_beam_control': 0,
            'hazard_lights_control': 0,
            'backup_light_control': 0,
            'width_lamp_control': 0,
            'wiper_wash_switch' : 0,
            'front_door_control': 0,
            'middle_door_control': 0,
            'horn_control' : 0,
        }
    },
    {
        'message_id': 0x0C08D0A5,  # 车辆整车速度信息报文
        'message_name': 'parking_control',
        'signals': {
            'longterm_park_req': 0,
            'temp_park_req': 0,
            'park_control_mode': 0,
            'park_work_mode': 0,
            'park_air_pressure': 0,
            'temp_park_pressure': 0,
            'park_msg_checksum': 10,
        }
    },
]
# print(messages_1[3]['signals'])

'''
    方向盘转角对应两字节数据情况：0-31500对应角度 -1575~ 1575， 0.1度分辨率，偏移量为-15750（方向盘中间值：0x3d86）
            方向盘报文数据换算成10进制后，除以10即得到方向盘角度，实际方向盘转角大概能打三圈，此处设定最大值可以打四圈多
    整车车速对应两字节数据情况：分辨率 1/256km/h/bit；偏移量:0；范围:0-250.996km/h
'''



def speed_from_plan():
    global vel_plan
    global messages_1
    global deceleration


    # messages_1[1]['signals']['target_velocity'] = vel_plan
    # messages_1[1]['signals']['target_velocity'] = deceleration
    vel_trans = vel_plan
    if vel_plan > vel_trans:
        #加速
        vel_cha = vel_plan - vel_trans
        total_time = 1 #总共用1s实现变速
        step_for_spd = 5
        every_vel = vel_cha / step_for_spd
        steps = [
            ("-0.8", total_time/step_for_spd),
            ("-1.2", total_time/step_for_spd),
            ("-1.5", total_time/step_for_spd),
            ("-1.6", total_time/step_for_spd),
            ("-1.8", total_time/step_for_spd)]
        
        for step in steps:
            value, duration = step
            # print(value)
            start_time = time.time()
            while time.time() - start_time < duration:
                vel_plan = vel_trans + every_vel
                messages_1[1]['signals']['target_velocity'] = vel_plan

    elif vel_plan < vel_trans:
        #减速
        vel_cha = vel_trans - vel_plan
        total_time = 1 #总共用1s实现变速
        step_for_spd = 5
        every_vel = vel_cha / step_for_spd            
        steps = [
            ("-0.8", total_time/step_for_spd),
            ("-1.2", total_time/step_for_spd),
            ("-1.5", total_time/step_for_spd),
            ("-1.6", total_time/step_for_spd),
            ("-1.8", total_time/step_for_spd)]
        
        for step in steps:
            value, duration = step
            # print(value)
            start_time = time.time()
            while time.time() - start_time < duration:
                vel_plan = vel_trans - every_vel            
                messages_1[1]['signals']['target_velocity'] = vel_plan
    else:
        messages_1[1]['signals']['target_velocity'] = vel_plan




def msg_recv_from_vcu1(dbc,bus):     # 从整车VCU中得到车辆目前实际相关信息，并放入到信息meg_car_ori中
    global bus_vel
    global steer_mod
    global quit_mod
    global messages_1
    global count
    global count1
    global brake_flag
    global q_num
    global target_vel
    global vel_plan

    messages_recv = bus.recv()
    drive_life = messages_1[1]['signals']['drive_msg_life']
    drive_life += 1
    if drive_life > 255:
        drive_life -= 256
    messages_1[1]['signals']['drive_msg_life'] = drive_life

    park_life = messages_1[4]['signals']['park_msg_checksum']
    park_life += 1
    if park_life > 255:
        park_life -= 256
    messages_1[4]['signals']['park_msg_checksum'] = park_life

    if start_flag:
        messages_1[3]['signals']['mode_disp'] = 1
    else:
        messages_1[3]['signals']['mode_disp'] = 0
        messages_1[1]['signals']['target_velocity'] = 0

    if messages_1[0]['signals']['target_steering_mod'] == 5:
        messages_1[1]['signals']['target_velocity'] = 0

    q_num += 1
    if q_num >= 20:
        messages_1[0]['signals']['target_steering_mod'] = 1
    # print(messages_1[0]['signals']['target_steering_mod'],"k"*12)

    #当前速度
    if messages_recv.arbitration_id == 0x0C06A5D0:
        decoded_messages = dbc.decode_message(messages_recv.arbitration_id, messages_recv.data)
        bus_vel = decoded_messages['act_vehicle_velocity']    


def msg_recv_from_vcu(dbc,bus):     # 从整车VCU中得到车辆目前实际相关信息，并放入到信息meg_car_ori中
    global bus_vel
    global steer_mod
    global quit_mod
    global messages_1
    global count
    global count1
    global brake_flag
    global q_num
    global target_vel
    global vel_plan
    global flag_wire
    global num_s
    messages_recv = bus.recv()##准备去掉生命值的部分
    drive_life = messages_1[1]['signals']['drive_msg_life']
    drive_life += 1
    if drive_life > 255:
        drive_life -= 256
    messages_1[1]['signals']['drive_msg_life'] = drive_life

    park_life = messages_1[4]['signals']['park_msg_checksum']
    park_life += 1
    if park_life > 255:
        park_life -= 256
    messages_1[4]['signals']['park_msg_checksum'] = park_life

    if start_flag:
        messages_1[3]['signals']['mode_disp'] = 1
    else:
        messages_1[0]['signals']['target_steering_mod'] == 5
        messages_1[1]['signals']['target_velocity'] = 0
        messages_1[3]['signals']['mode_disp'] = 0
        num_s += 1
    print(num_s)

    prcolor.prRed("start_flag",start_flag)
    if num_s >= 5:
        flag_wire = 1

    

    q_num += 1
    if q_num >= 20:
        messages_1[0]['signals']['target_steering_mod'] = 1
    # print(messages_1[0]['signals']['target_steering_mod'],"k"*12)

    # #当前速度
    # if messages_recv.arbitration_id == 0x0C06A5D0:
    #     decoded_messages = dbc.decode_message(messages_recv.arbitration_id, messages_recv.data)
    #     bus_vel = decoded_messages['act_vehicle_velocity']    


def call_back_brake(msg):
    global brake_flag
    global num
    global bus_vel
    global Brake ##红绿灯刹车
    global messages_1
    global flag_spd_start_brake##状态变化
    global flag_spd_start ##状态变化

    global vel_plan

    global veh_cte
    global Brake_end ##终点刹车
    global flag_end ##终点只执行一次

    brake_action = json.loads(msg.data)
    brake_flag = brake_action['Emergency_brake_decision']


def turning_light(vel_plan_1):
    global messages_1
    if vel_plan_1 == 8: #左7右8
        messages_1[3]['signals']['turning_lighting_control'] = 1       # 0不打灯，1左转，2右转
    elif vel_plan_1 == 7:
        messages_1[3]['signals']['turning_lighting_control'] = 2        # 0不打灯，1左转，2右转
    else:
        messages_1[3]['signals']['turning_lighting_control'] = 0        # 0不打灯，1左转，2右转
        # messages_1[0]['signals']['target_steering_velocity'] = 250    # 起步时设置方向盘转角速度为最低值

def speed_brake_plan():
    global brake_flag
    global num
    global now_speed
    global Brake ##红绿灯刹车
    global messages_1
    global flag_spd_start_brake##状态变化
    global flag_spd_start ##状态变化

    global vel_plan
    global veh_cte
    global Brake_end ##终点刹车
    global flag_end ##终点只执行一次
    global num_em
    global num_light
    global num_back

    global vel_plan
    global messages_1
    global deceleration
    global target_wheel
    global is_exit


    while not is_exit:

        # print("Brake",Brake)
        start_time = time.time()
        print(brake_flag)
        ##1紧急刹车
        if brake_flag: #紧急刹车，比终点和红绿灯更急一些，不过尽量做到不前仰后翻
            prcolor.prRed("紧急停车")
            num = 0
            num_em += 1#防止误触
            if num_em >=10:
                messages_1[1]['signals']['target_velocity'] = 0
                steps = [
                    ("-0.8", 0.8),
                    ("-1", 0.8),
                    ("-1.2", 0.7),
                    ("-1.4", 0.8),
                    ("-1.8", 0.5),
                    ("-1", 0.5)]

                if now_speed > 2: #如果有速度就基本准备刹停了
                    for step in steps:
                        value, duration = step
                        value = float(value)
                        # print(value)
                        start_time = time.time()
                        while time.time() - start_time < duration:
                            messages_1[1]['signals']['target_velocity'] = 0
                            #根据实际速度调节实际减速度大小（目标减速度与实际车速与直行规划速度商的平方相关）
                            # print(type(value),type(now_speed))
                            real_deceleration = value*(((now_speed*3.6))*0.1)                           
                            messages_1[2]['signals']['target_deceleration'] = float(real_deceleration)
                            # print("messages_1[2]['signals']['target_deceleration']",messages_1[2]['signals']['target_deceleration'])
                    print("紧急停车中")   
                else:
                    #此时前方还是有障碍物，然后保持静止同时不退出紧急刹车，但是停止循环刹车
                    messages_1[1]['signals']['target_velocity'] = 0
                    messages_1[2]['signals']['target_deceleration'] = -0.8
                    
                flag_spd_start_brake = 0


        #2紧急停车结束 --没有障碍物的同时，结束紧急刹车 ——————为了防止误触可以加上
        elif not brake_flag and flag_spd_start_brake == 0: 
            num_em = 0 #本次停障结束
            num += 1 #防止误触
            if num > 5:##目标消失，防止误触
                messages_1[1]['signals']['target_velocity'] = vel_plan #7#13 # 5
                messages_1[2]['signals']['target_deceleration'] = 0
                messages_1[2]['signals']['XBR2_Ctrl_Mode'] = 0
                messages_1[2]['signals']['XBR2_EBI_Mode'] = 0
                messages_1[2]['signals']['XBR2_Priority'] = 0
                flag_spd_start_brake = 1

        ##3终点刹车
        elif Brake_end and flag_end == 0: 
            messages_1[1]['signals']['target_velocity'] = 0  
            steps = [
                ("-0.8", 0.8),
                ("-1", 0.8),
                ("-1.2", 0.8),
                ("-1.6", 1.4),
                ("-0", 0.1),
                ("-1.8", 0.5)]
            
            for step in steps:
                value, duration = step
                # print(value)
                start_time = time.time()
                if brake_flag:
                    break
                while time.time() - start_time < duration:
                    messages_1[1]['signals']['target_velocity'] = 0
                    messages_1[2]['signals']['target_deceleration'] = float(value)
                    prcolor.prYellow("到达终点,减速中")
            if now_speed < 0.15:
                flag_end = 1  # 终点只执行一次
                prcolor.prRed("已到达终点")
                messages_1[1]['signals']['target_velocity'] = 0
                messages_1[2]['signals']['target_deceleration'] = 0
                break

        ##4红绿灯刹车
        elif Brake:
            num_back = 0
            num_light +=1 #防止误触
            if num_light>=5:
                if now_speed >2.5: #如果有速度就基本准备刹停了
                    messages_1[1]['signals']['target_velocity'] = 0
                    steps = [
                        ("-0.6", 0.4),
                        ("-0.8", 0.8),
                        ("-1.0", 1.0),
                        ("-1.1", 1.2),
                        ("-1.2", 0.8),
                        ("-0.6", 1.3),
                        ("-0", 0.1)]

                    for step in steps:
                        value, duration = step
                        # print(value)
                        start_time = time.time()
                        if brake_flag:
                            break
                        while time.time() - start_time < duration:
                            messages_1[1]['signals']['target_velocity'] = 0
                            messages_1[2]['signals']['target_deceleration'] = float(value)*(now_speed*3.6*0.1)*0.5
                    print("红灯停车中")

                else:
                    #此时前方还是有障碍物，然后保持静止同时不退出紧急刹车，但是停止循环刹车
                    messages_1[1]['signals']['target_velocity'] = 0
                    messages_1[2]['signals']['target_deceleration'] = -0.8
                prcolor.prRed("红灯刹车")
                flag_spd_start = 0

        ##53红绿灯刹车结束
        elif not Brake and flag_spd_start == 0: 
            num_light =0
            num_back+=1
            if num_back >= 5:
                ##等待检测结果稳定，20其实也是不够的
                messages_1[1]['signals']['target_velocity'] = vel_plan #7#13 # 5
                messages_1[2]['signals']['target_deceleration'] = 0
                messages_1[2]['signals']['XBR2_Ctrl_Mode'] = 0
                messages_1[2]['signals']['XBR2_EBI_Mode'] = 0
                messages_1[2]['signals']['XBR2_Priority'] = 0
                flag_spd_start = 1
                
        ###6不再刹车时给的速度
        else: 
            messages_1[1]['signals']['target_velocity'] = vel_plan
            messages_1[2]['signals']['target_deceleration'] = deceleration
            # speed_from_plan()
        
        messages_1[0]['signals']['target_steering_angle'] =  target_wheel

        messages_1[2]['signals']['XBR2_Ctrl_Mode'] = 0
        messages_1[2]['signals']['XBR2_EBI_Mode'] = 0
        messages_1[2]['signals']['XBR2_Priority'] = 0
        
        a = messages_1[1]['signals']['target_velocity']
        b = messages_1[2]['signals']['target_deceleration']
        c = messages_1[0]['signals']['target_steering_angle']
        time.sleep(0.01)
        end_time = time.time()
        process_time = end_time - start_time
        prcolor.prBlue(f"目标速度：{a},目标减速度：{b},目标转角：{c}")
        prcolor.prYellow("wirecontrol_threading_select_time:{}".format(process_time))


def callback_PathSpeedCtrl(msg):    # 从路径速度规划中通过订阅话题，来获取应该发送给车辆的速度和方向盘转角信息，若手动调试请在上面直接修改
    global Brake
    global veh_cte
    global messages_1
    global vel_plan
    global Brake_end
    global flag_end
    global num
    global flag_spd_start
    global vel_plan_1
    global deceleration
    global target_wheel

    control_msg = json.loads(msg.data)
    # messages_1[0]['signals']['target_steering_angle'] =  control_msg["wheelAngle"] #车辆转角，方向盘转角
    target_wheel = control_msg["wheelAngle"]
    # target_wheel = wheel_filter(target_wheel)
    # vel_plan = control_msg["PointVel"]
    vel_plan_1 = control_msg["PointVel"] #全局速度接口
    # prRed(vel_plan)
    #acc的结果
    vel_plan = control_msg["target_speed"] #acc接口
    deceleration = control_msg["deceleration"]
    # messages_1[1]['signals']['target_velocity'] = vel_plan ##不能直接给，耦合太多了

    # Note 1.21
    # Brake = control_msg["Brake"]
    # Brake_end = control_msg["Brake_end"] #终点的停车
    # veh_cte = control_msg["CTE"]
    # print(Brake,"callpath")

    turning_light(vel_plan_1)


def msg_send_to_vcu(messages_1,dbc,bus):
    #置发送了message
    global count
    global brake_flag
    global bus_vel
    # 以下向车辆VCU发送了方向盘转角规划信息
    global flag_steer
    global Brake
    global q_num
    global quit_mod
    global steer_mod
    global count1

    msg_send = dbc.get_message_by_name(messages_1[0]['message_name'])
    messages_ = list(msg_send.encode(messages_1[0]['signals']))
    messages_send = can.Message(arbitration_id=msg_send.frame_id, data=messages_, is_extended_id=True)

    msg_send11 = dbc.get_message_by_name(messages_1[1]['message_name'])
    messages_11 = list(msg_send11.encode(messages_1[1]['signals']))
    messages_send11 = can.Message(arbitration_id=msg_send11.frame_id, data=messages_11, is_extended_id=True)

    msg_send33 = dbc.get_message_by_name(messages_1[2]['message_name'])
    messages_33 = list(msg_send33.encode(messages_1[2]['signals']))
    messages_send33 = can.Message(arbitration_id=msg_send33.frame_id, data=messages_33, is_extended_id=True)

    msg_send44 = dbc.get_message_by_name(messages_1[3]['message_name'])
    messages_44 = list(msg_send44.encode(messages_1[3]['signals']))
    messages_send44 = can.Message(arbitration_id=msg_send44.frame_id, data=messages_44, is_extended_id=True)

    msg_send88 = dbc.get_message_by_name(messages_1[4]['message_name'])
    messages_88 = list(msg_send88.encode(messages_1[4]['signals']))
    messages_send88 = can.Message(arbitration_id=msg_send88.frame_id, data=messages_88, is_extended_id=True)
    bus.send(messages_send)
    bus.send(messages_send11)
    bus.send(messages_send33)
    bus.send(messages_send44)
    bus.send(messages_send88)



def signal_handler(signal, frame):
    global is_exit
    is_exit = True

def callback_allowStart(msg):
    global start_flag
    allow_msg = json.loads(msg.data)
    start_flag = allow_msg["allow_auto"]
    # print(start_flag)


# 车辆起步转向灯、喇叭控制和方向盘转向速度平滑处理的过程
def smooth_steering(dbc, bus):
    global messages_1
    global veh_cte
    global target_steer_vel
    signal.signal(signal.SIGINT, signal_handler)

    steer_vel = 50      # 设置局部变量方向盘转角速度初始值为50（此值仅影响起步阶段方向盘转角速度）
    messages_1[0]['signals']['target_steering_velocity'] = steer_vel    # 起步时设置方向盘转角速度为最低值

    if veh_cte > 1:     # 说明车辆已经向左偏移轨迹值大于1米以上，应该打右转向灯
        print("打右转向灯")
        messages_1[3]['signals']['turning_lighting_control'] = 2        # 0不打灯，1左转，2右转
    elif veh_cte < -1:  # 说明车辆已经往右偏移轨迹值大于1米以上，应该打左转向灯
        print("打右转向灯")
        messages_1[3]['signals']['turning_lighting_control'] = 1        # 0不打灯，1左转，2右转
    else:
        messages_1[3]['signals']['turning_lighting_control'] = 0        # 0不打灯，1左转，2右转
    # messages_1[3]['signals']['horn_control'] = 1        # 可加入喇叭响铃，与刹车灯同步
    msg_recv_from_vcu1(dbc, bus)
    msg_send_to_vcu(messages_1, dbc, bus)
    time.sleep(1.5)           # 使喇叭和转向灯响亮1.5s，再进行后续操作 

    messages_1[3]['signals']['horn_control'] = 0            # 关闭喇叭
    messages_1[0]['signals']['target_steering_mod'] = 1     # 之前方向盘模式发送5人工介入模式，改为1自动驾驶模式使程序接管方向盘控制
    messages_1[1]['signals']['target_velocity'] = 10    # 前述操作未开启车速，此时可将车速与实际设计车速匹配
    messages_1[0]['signals']['target_steering_angle'] = target_wheel
    while not is_exit:         # 换道完成之后才会退出
        print("veh_cte", veh_cte)
        print("方向盘转向速度：", steer_vel, "方向盘转向角度：", messages_1[0]['signals']['target_steering_angle'])  # 后者由ros订阅回调中实时获取变化
        msg_recv_from_vcu1(dbc, bus)
        msg_send_to_vcu(messages_1, dbc, bus)
        time.sleep(0.01)

        steer_vel = steer_vel + 1
        if steer_vel >= 300:
            steer_vel = 300
        messages_1[0]['signals']['target_steering_velocity'] = steer_vel

        if veh_cte > -2.5 and veh_cte < 2.5 :          # 判断是否已经完成起步换道操作
            print("车辆已成功并入正常运行车道")
            time.sleep(0.3)         # 加入保底机制，防止车辆最初就在运行车道上面，导致依旧车辆在起步时立马就会有正常设定大小的方向盘转角速度
            messages_1[3]['signals']['turning_lighting_control'] = 0        # 关闭转向灯
            messages_1[0]['signals']['target_steering_velocity'] = 300    # 回归到正常车辆方向盘设定转动角速度
            break  #退出while
        else:
            pass

# 车辆起步
def start_moving(dbc, bus):
    global start_flag   # 程序检查的车辆自身是否允许自动驾驶的状态

    signal.signal(signal.SIGINT, signal_handler)

    while not is_exit:
        msg_send_to_vcu(messages_2, dbc, bus)
        bus_recv_self_check = bus.recv()
        if bus_recv_self_check.arbitration_id == 0x0C06A5D0:
            self_check_message = dbc.decode_message(bus_recv_self_check.arbitration_id, bus_recv_self_check.data)
            if start_flag and self_check_message["external_automatic_drive_req"] == 1:  # 置0说明自动驾驶物理按钮未开启，置1说明物理按钮已开启
                print("车辆处于起步状态，开始进行起步操作")
                smooth_steering(dbc, bus)
                break
            elif start_flag:        # 前者满足，说明后者不满足，即未开启自动驾驶物理按钮
                print("车辆自动驾驶物理按钮未开启")
                time.sleep(0.01)
            elif self_check_message["external_automatic_drive_req"] == 1:  # 后者满足，说明前者不满足，即车辆自动驾驶自检未通过
                print("车辆自动驾驶自检未通过")
                time.sleep(0.01)
            else:           # 两者均不满足
                print("车辆不允许自动驾驶")
                time.sleep(0.01)    # 防止该while循环未进入有效部分时，无休止占用资源
        else:
            print("未接收到指定can信号")
            time.sleep(0.01)        # 防止该while循环未进入有效部分时，无休止占用资源
    print("车辆已起步")

def call_back_GNSS(msg):
    global now_pos_x
    global now_pos_y
    global now_pos_head
    global now_speed
    global path_list_obj
    global end_point
    global Brake
    global cls
    global insec_point
    global mark
    global Brake_end

    GNSS_data = json.loads(msg.data)
    now_pos_x = GNSS_data['UTM_x']
    now_pos_y = GNSS_data['UTM_y']

    now_pos_head = GNSS_data["Head"]
    now_speed = GNSS_data["Speed"]

def callback_acc(msg):
    global vel_plan
    global deceleration
    try:
        acc_data = json.loads(msg.data)
        vel_plan = acc_data["target_speed"]
        deceleration = acc_data['deceleration']
    except:
        print("acc异常")

def main():

    global brake_flag
    global count
    global num
    count = 0
    global messages_2
    global flag_steer
    global messages_1
    global bus_vel
    global steer_mod
    global quit_mod
    global count1
    global is_exit
    global start_flag
    global Brake
    global flag_wire
    signal.signal(signal.SIGINT, signal_handler)

    script_directory = os.path.dirname(os.path.abspath(__file__))
    relative_path = "../config/car_vcu2.dbc"
    gps_dbc_file = os.path.join(script_directory, relative_path)

    dbc = cantools.db.load_file(gps_dbc_file)
    bus = can.interface.Bus(channel='can0', bustype='socketcan')
    
    rospy.init_node('pub_vcu1', anonymous=False)
    rospy.Subscriber('/emergency_brake_from_decision', std_msgs.msg.String, call_back_brake)
    rospy.Subscriber('/To_WireContorl_publisher', std_msgs.msg.String, callback_PathSpeedCtrl)
    rospy.Subscriber('/from_vcu_self_check', std_msgs.msg.String, callback_allowStart)
    rospy.Subscriber('/ztbus/location', std_msgs.msg.String, call_back_GNSS)
    # rospy.Subscriber('/Delta_mpc_to_wire_control', std_msgs.msg.String, callback_acc)
    
    # pub = rospy.Publisher("Quit_process", std_msgs.msg.String,queue_size=1)
    print("success")
    # Wire_control_data = {'quit':False}

    # 以下部分用于判断自动驾驶物理按钮是否打开，并输出开始车辆启动过程的一些指令（打灯、转向等））
    start_moving(dbc, bus)      # 用于起步时打灯、鸣笛和方向盘平滑，要注意此前应有是否进入自动驾驶的判断

    speed_brake_plan_threading = threading.Thread(target=speed_brake_plan)
    speed_brake_plan_threading.start()

    while not is_exit :
        start_time = time.time()
        # pub.publish(json.dumps(Wire_control_data))
        # prGreen("pub ok")

        if flag_wire == 0 :  #0-wirecontrol发布 1-不发布
            # print("*"*10)
            msg_recv_from_vcu(dbc, bus)
            msg_send_to_vcu(messages_1, dbc, bus)
        elif flag_wire == 1:
                    # 关闭CAN总线
            msg_send_to_vcu(messages_2, dbc, bus)
            bus.shutdown()
            is_exit = True
            break
        
        
        time.sleep(0.01)    
        end_time = time.time()
        process_time = end_time - start_time
        prcolor.prPink("wirecontrol_main_time:{}".format(process_time))

    print('\nall threads were ended by Ctrl-C')  

if __name__ == '__main__':
    main()


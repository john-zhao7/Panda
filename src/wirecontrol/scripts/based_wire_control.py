### !/usr/bin/python3
# -*- coding: utf-8 -*-

##减速测试 base_wirecontrol
import time
import matplotlib.pyplot as plt

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

vel_plan = 0

flag_end = 0 #终点停车只执行一次

flag_spd_start = 1#状态转换
flag_spd_start_brake = 1#状态转换

y = 0

import os
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
from base_function import *
class MyThread(threading.Thread):
    def __init__(self, target, args=()):
        super().__init__(target=target, args=args)
        self.result = None

    def run(self):
        self.result = self._target(*self._args)

def signal_handler(signal, frame):
    global is_exit
    is_exit = True



messages_1 = [      # 发送给整车VCU的报文类型
    {
        'message_id': 0x0C01D0A5,    # 车辆方向盘转向信息报文
        'message_name': 'steering_control',
        'signals': {
            'target_steering_angle': 0,     # 车辆方向盘角度，两字节表示
            'target_steering_mod': 5,       # 车辆转向控制模式，4 bit表示，置1为转角控制模式，若手动后，则置5后再置1
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

def can_stop_thread(dbc, bus):
    global messages_2
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
    msg_send_to_vcu(messages_2, dbc, bus)
    bus.shutdown()
    print('\nall threads were ended by Ctrl-C')


def speed_change_brake(interval,total_time):
    global y #速度
    start_time = time.time()
    time_list = []
    y_list = []
    k = 0

    # 循环计算并记录时间和 y 的值
    while True:
        # 计算经过的时间
        elapsed_time = time.time() - start_time
        # 检查是否超过总运行时间，如果超过则跳出循环
        if elapsed_time <= total_time:  ##5s加速到10
            y = 10
            t = elapsed_time  # 时间变量
            y_list.append(y)
            time_list.append(t)
            # print(elapsed_time)
        elif y >= -0.1:
            if k==0:
                k = 1
                start_time_ = time.time()
            time_ = time.time() - start_time_
            # 计算 y 的值
            t = time_  # 时间变量
            if y <= 0:
                y = 0
            else:
                y = -1 * t + 10
                if y <0:
                    y=0
            # print(time_)
            # 记录时间和 y 的值
            time_list.append(t)
            y_list.append(y)
            if y <= 0 and time_ > 15:
                break
            prGreen(time_)
        result = y_list
        # 等待一段时间，控制循环速率
        time.sleep(interval)
        prRed(y)
    return result


def prRed(skk): 
    print("\033[91m {}\033[00m".format(skk))


def prGreen(skk): 
    print("\033[92m {}\033[00m".format(skk))


def prYellow(skk): 
    print("\033[93m {}\033[00m".format(skk))


def prBlue(skk): 
    print("\033[94m {}\033[00m".format(skk))
def prPurple(skk): 
    print("\033[95m {}\033[00m".format(skk))
def prCyan(skk): 
    print("\033[96m {}\033[00m".format(skk))


def prOrange(skk): 
    print("\033[33m {}\033[00m".format(skk))


def prPink(skk): 
    print("\033[95m {}\033[00m".format(skk))



def main():
    global is_exit
    global y

    flag_wire = 0
    signal.signal(signal.SIGINT, signal_handler)

    script_directory = os.path.dirname(os.path.abspath(__file__))
    relative_path = "../config/car_vcu2.dbc"
    gps_dbc_file = os.path.join(script_directory, relative_path)

    dbc = cantools.db.load_file(gps_dbc_file)
    bus = can.interface.Bus(channel='can0', bustype='socketcan')

    rospy.init_node('pub_vcu1', anonymous=False)
    print("success")

    interval = 0.001  # 时间间隔，单位为秒
    total_time = 5  # 总运行时间，单位为秒

    Speed_value_threading = MyThread(target=speed_change_brake, args=(interval, total_time))    
    Speed_value_threading.start()
    Speed_value_threading.join()
    result = Speed_value_threading.result
    # time.sleep(0.01)
    x_values = list(range(len(result)))  
    plt.scatter(x_values, result)
    plt.xlabel('Time')
    plt.ylabel('y')
    plt.title('speed 曲线')
    plt.show()
    while not is_exit :
        if flag_wire == 0 :  # 0-wirecontrol发布 1-不发布
            messages_1[1]['signals']['target_velocity'] = y
            msg_recv_from_vcu(dbc, bus)
            msg_send_to_vcu(messages_1, dbc, bus)
            time.sleep(0.01)

    Can_shutdown_threading = threading.Thread(target=can_stop_thread,args=())
    Can_shutdown_threading.start()
    Can_shutdown_threading.join()


if __name__ == '__main__':
    main()


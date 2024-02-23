#!/usr/bin/python3
# 功能描述：本文件主要用于自动驾驶后wire_control_pub的意外退出，从而发出有效的结束CAN报文


import can
import cantools
import rospy
import time
import std_msgs.msg
from car_interfaces.msg import CarOriInterface,PathSpeedCtrlInterface
import os
import signal
import json
# import threading

num = 0
flag = True
quiting = True
is_exit = False


def signal_handler(signal, frame):
    global is_exit
    is_exit = True

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

def quit_process(dbc, bus):
    global quiting
    global num
    global flag
    # num = 0
    messages = [      # 发送给整车VCU的报文类型
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
    if quiting:
        msg_send_to_vcu(messages, dbc, bus)
        num += 1
        num = 0
        # bus.shutdown()
        # flag = False
        print('\nall threads were ended by Wire_Control')

def main():
    global quiting
    global is_exit
    global flag
    rospy.init_node('QUIT_vcu1', anonymous=False)
    signal.signal(signal.SIGINT, signal_handler)

    script_directory = os.path.dirname(os.path.abspath(__file__))
    relative_path = "../config/car_vcu2.dbc"
    gps_dbc_file = os.path.join(script_directory, relative_path)

    dbc = cantools.db.load_file(gps_dbc_file)
    bus = can.interface.Bus(channel='can0', bustype='socketcan')

    start = time.time() #开机执行一次然后关闭即可
    while not is_exit:

        print("ok")
        quit_process(dbc, bus)
        print("恢复自动驾驶功能")
        end=time.time()
        if end - start > 5:
            break
        
    bus.shutdown()

if __name__ == '__main__':
    main()


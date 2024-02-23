#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import json
import serial
import rospy
import std_msgs.msg
from car_interfaces.msg import GpsImuInterface, GpsImuAddInterface
import math
from datetime import datetime, timedelta
import time
import pyproj
import signal
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
import from_latlon,prcolor
import threading

buf_pos_lat = 0
buf_pos_lon = 0
buf_vel = 0
buf_angle_heading = 0

serial_port_name = "/dev/ttyUSB0"
baud_rate = 115200
is_exit= False
content = {}


def connect_to_serial(port_name, baud_rate):
    try:
        return serial.Serial(port_name, baudrate=baud_rate, timeout=1)
    except serial.SerialException as e:
        rospy.logerr(f"Unable to connect to {port_name} with baud rate {baud_rate}: {e}")
        return None

def read_from_port(serial_port):
    global buf_pos_lat
    global buf_pos_lon
    global buf_vel
    global buf_angle_heading
    global content
    
    # 此处放置读取串口的逻辑 ...
    buf_new = serial_port.readline()
    #print("buf new",buf_new)
    
    if ("INSPVAXA" in buf_new.decode() and "FINESTEERING" in buf_new.decode()):
            
        buf_whole_array = buf_new.decode().split(";")
        buf_front_arary = buf_whole_array[0].split(",")
        # print(buf_whole_array)
        buf_back_array = buf_whole_array[1].split(",")


        buf_pos_lon = float(buf_back_array[3])
        buf_pos_lat = float(buf_back_array[2])


        # buf_pos_alt = float(buf_back_array[4])

        buf_vel_east= float(buf_back_array[7])
        buf_vel_north= float(buf_back_array[6])
        buf_vel_u= float(buf_back_array[8])

        # 车速通过串口拿不到数据
        buf_vel= math.sqrt(buf_vel_east**2+buf_vel_north**2+buf_vel_u**2)

        buf_angle_heading = from_latlon.angle_2_angle(float(buf_back_array[11]))
        # buf_angle_pitch = float(buf_back_array[10])
        # buf_angle_roll = float(buf_back_array[9])

        if(buf_back_array[0] == "INS_SOLUTION_GOOD"):
            buf_system_state = 3
        else:
            buf_system_state = 0

        # 搜星数量
        buf_gps_num_sats_used = 0
        buf_gps_num_sats_1 = 0
        buf_gps_num_sats_2 = 0

        if buf_front_arary[4] == "FINEBACKUPSTEERING":
            buf_satellite_status = 1
        else:
            buf_satellite_status = 0

        # 差分延时
        buf_gps_age = 0
        buf_pos_x = 0
        buf_pos_y = 0

        # 进程处理时间
        buf_process_time=0
        # 惯导通信故障
        buf_gps_cfault = False

        content["time_stamp"] = time.time()
        content["Lat"] = buf_pos_lat # GPS_MSG.PosLat
        content["Lon"] = buf_pos_lon # GPS_MSG.PosLon
        content["Head"] = buf_angle_heading # GPS_MSG.AngleHeading
        content["Speed"] = buf_vel # GPS_MSG.Vel
        content["UTM_x"] = from_latlon.from_latlon(buf_pos_lat, buf_pos_lon)[0]
        content["UTM_y"] = from_latlon.from_latlon(buf_pos_lat, buf_pos_lon)[1]
        # return content

def connect_gps_buf():
    global content
    while not is_exit:
        start_time = time.time()
        try:
            serial_port = connect_to_serial(serial_port_name, baud_rate)
            read_from_port(serial_port)
        except:
            serial_port_name = "/dev/ttyUSB0"
            baud_rate = 115200
            prcolor.prPink("connected")
        end_time = time.time()
        process_time = end_time - start_time
        prcolor.prYellow("gps_threading_connect_time:{}".format(process_time))


def signal_handler(signal, frame):
    global is_exit
    is_exit = True


def main():
    global buf_pos_lat
    global buf_pos_lon
    global buf_vel
    global buf_angle_heading
    global is_exit
    global content

    signal.signal(signal.SIGINT, signal_handler)
    # 使用ROS参数服务器来获取参数
    # serial_port_name = rospy.get_param("~serial_port", "/dev/ttyUSB0")
    # baud_rate = rospy.get_param("~baud_rate", 115200)

    rospy.init_node("gps_imu_pub", anonymous=True)
    pub_location = rospy.Publisher('/ztbus/location', std_msgs.msg.String, queue_size=10)
    pub = rospy.Publisher("gps_imu", GpsImuInterface, queue_size = 10) 
    msg = GpsImuInterface()

    # threading_connect_gps = threading.Thread(target=connect_gps_buf)
    # threading_connect_gps.start()
    prcolor.prPink("connected")

    while not is_exit:
        start_time =  time.time()
        # print(1)
        try:
            serial_port = connect_to_serial(serial_port_name, baud_rate)
            read_from_port(serial_port)
            msg.PosLon =content["Lon"]
            msg.PosLat =content["Lat"] 
            msg.posX = content["UTM_x"] 
            msg.posY = content["UTM_y"]
            msg.Vel = content["Speed"]
            msg.AngleHeading = content["Head"]
            point = [msg.posX,msg.posY]
            pub_location.publish(json.dumps(content))
            pub.publish(msg)
            time.sleep(0.01)
            end_time = time.time()
            prcolor.prYellow("gps main pub time", end_time-start_time)
            prcolor.prGreen("gps message pub success, curpos:{}".format(point))

        except:
            serial_port_name = "/dev/ttyUSB0"
            baud_rate = 115200
            # prcolor.prPink("connected")
            # serial_port = connect_to_serial(serial_port_name, baud_rate)
            # read_from_port(serial_port)


if __name__ == "__main__":
    main()

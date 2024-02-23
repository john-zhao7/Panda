#!/usr/bin/env python3
#coding=utf-8


from sklearn.neighbors import KDTree
import matplotlib.pyplot as plt

import numpy as np
import math
import json
import sys
import os

# 加入库路径，实现vs调试功能
script_dirc = os.path.dirname(os.path.abspath(__file__))
relative_path = '../../../devel/lib/python3/dist-packages'
ico_path = os.path.join(script_dirc, relative_path)
sys.path.append(ico_path)


import rospy
from car_interfaces.msg import GlobalPathPlanningInterface
from car_interfaces.msg import  NetStartEndPointInterface,GpsImuInterface
from car_interfaces.msg import HmiStartEndPointInterface
from hmi.msg import NodePointsInterface

import time
import signal

import std_msgs.msg
import glob

script_directory = os.path.dirname(os.path.abspath(__file__))
image_relative_path = 'lib'
icon_path = os.path.join(script_directory, image_relative_path)

sys.path.append(icon_path)

import base_function,prcolor,readMap


Map = []
now_pos_x = 0.0
now_pos_y = 0.0
now_pos_head = 0.0
now_speed = 0.0
q = 0

speed = 0 # hmi 发送来的

roadid = 0
stationid = 0
flag_hmi = 0
q = 1  # 从1开始数
insec_point = []
station_point = []


#回调flag
hmi_flag = False
node_flag = False
gps_flag = False


'''
describe:接收gps发送的信息
input:msg
output:没有要经纬度，直接用utmx,utmy,head
'''
def call_back_CurGNSS(msg):
    global content
    global now_pos_x
    global now_pos_y
    global now_pos_head
    global gps_flag

    content = json.loads(msg.data)
    now_pos_x = content["UTM_x"]
    now_pos_y = content["UTM_y"]
    now_pos_head = content['Head']
    gps_flag = True


'''
describe:接收hmi节点消息
input:msg
output:roadid stationid flag_hmi
'''
def hmi_start_end_point_data_callback(msg):
    #在函数里面global
    global roadid
    global stationid
    global flag_hmi #hmi 发送成功，恒=1
    global hmi_flag

    roadid = msg.roadid
    stationid = msg.stationid
    flag_hmi = msg.flag
    hmi_flag = True


'''
describe:接收hmi发送的路口信息。此处对于站点信息并未进行直接使用，\
    只需要红路灯路口信息
input:msg
output:station_point insec_point
'''
def node_point_data_callback(msg):
    global insec_point
    global station_point
    global node_flag

    station_point = msg.stationpoint
    insec_point = msg.incppoint
    station_point = insec_point
    node_flag = True


'''
describe:计算欧式距离
input:两个点的xy坐标
output:距离值
'''
def euclidean_distance(x1,y1,x2,y2):
    return math.sqrt((x2 - x1) ** 2 + (y2 - y1) ** 2)


'''
describe:计算直线斜率
input:两个点的xy坐标
output:斜率值
'''
def calculate_k(x1,y1,x2,y2):
    k = (y2 - y1) / (x2 - x1)
    return k

'''
describe:计算航向的list
input:路径x_list和y_list
output:head_list #注意最后的单位格式
'''
# 计算航向的list，输入为路径x_list和y_list
def calculate_head(x,y):
    
    # 计算每个点的航向角
    headings = []
    head_list = []
    for i in range(len(x)):
        if i == 0:
            # 第一个点，使用后一个点计算航向角
            dx = x[i + 1] - x[i]
            dy = y[i + 1] - y[i]
        elif i == len(x) - 1:
            # 最后一个点，使用前一个点计算航向角
            dx = x[i] - x[i - 1]
            dy = y[i] - y[i - 1]
        else:
            # 中间点，使用前后两个点计算航向角
            dx = x[i + 1] - x[i]
            dy = y[i + 1] - y[i]

        # 计算航向角
        heading = np.arctan2(dy, dx) # radian [rad]
        headings_angle = math.degrees(math.atan2(dy, dx))#np.arctan2(dy, dx)*180/np.pi  # angle [°]

        headings.append(heading)
        head_list.append(headings_angle)
    # return headings,headings_angles
    return head_list



'''
describe:选择最接近的map作为当前循迹目标
input:
output:string类型的路径，包括.map的路径和同名的.txt路径
'''
def cal_road():
    global now_pos_x,now_pos_y

    script_path = os.path.dirname(os.path.abspath(__file__))

    directory = "../../hmi/config/"
    abs_path = os.path.join(script_path, directory)
    # 目录路径
    # directory = "/home/cyun/las/src/hmi/config"
    print(abs_path)
    # 获取目录下所有.map文件的路径
    map_files = glob.glob(os.path.join(abs_path, "*.map"))

    # 初始化最小距离和相关文件路径
    min_distance = float('inf')
    min_distance_map = ""
    min_distance_txt = ""

    # 遍历每个.map文件
    for map_file in map_files:

        x_list, y_list, head_list, vel_list = readMap.readMap(map_file)
        
        trajectory = [list(coord) for coord in zip(x_list, y_list)]  
        kdtree = KDTree(trajectory)
        curPos = [now_pos_x, now_pos_y]

        distances, indices = kdtree.query([curPos], k=1)  
        current_distance = distances

        mark = indices[0][0]
        mark_index = mark

        txt_file = os.path.splitext(map_file)[0] + ".txt"
        if os.path.exists(txt_file):
            print("Txt File:", txt_file)
        else:
            print("Txt File not found!")
            
        print("File:", map_file)
        if current_distance < min_distance:
            min_distance = current_distance
            min_distance_map = map_file
            min_distance_txt = txt_file
    

    return min_distance_map,min_distance_txt


def caculate_point(txt_path):

    data_list = []
    # 打开.txt文件
    with open(txt_path, 'r') as file:
        for line in file:
            values = line.strip().split(';')
            x = float(values[1])
            y = float(values[2])

            data_list.extend([x, y])
    # print(data_list)
    return data_list



def main():
    
    global routedata
    global now_pos_x
    global now_pos_y
    global now_pos_head
    global now_speed
    global q


    global speed
    global now_pos_head
    global yaml_data
    global roadid
    global stationid
    global flag_hmi  #hmi 发送成功，恒=1
    global insec_point
    global station_point


    signal.signal(signal.SIGINT, quit)

    rospy.init_node('global_path_planning')
    rospy.logwarn("plan start success")
    rospy.logwarn("**********需要先打开gps**********")
    

    pub = rospy.Publisher("global_path_planning_data", GlobalPathPlanningInterface, queue_size = 10)

    rospy.Subscriber("hmi_start_end_point_data", HmiStartEndPointInterface, hmi_start_end_point_data_callback)
    rospy.Subscriber("node_points_data", NodePointsInterface, node_point_data_callback)
    rospy.Subscriber('/ztbus/location', std_msgs.msg.String, call_back_CurGNSS)

    x_list = []
    y_list = []
    head_list = []
    curva_list = []
    routedata = []
    x_list_pub = []
    y_list_pub = []
    vel_list_pub = []
    curva_list_pub = []
    head_list_pub = []

    startpoint=[]

    q = 1  # 从1开始数
    flag = 0  # 全局路径只算一次
    plot_flag = 1
    ROI_map = 0
    msg = GlobalPathPlanningInterface()

    #每个回调先正常接收再进行程序处理，threading也要放在里面
    while not gps_flag: # hmi不再需要了
        rospy.sleep(0.1)

    if not rospy.is_shutdown():

        while not rospy.is_shutdown():

            start_time = time.time()
            # 计算全局路径，只需要执行一次
            if flag == 0: #flag-只执行一次
                # 计算最适合的map
                mapfile,min_distance_txt = cal_road()
                prcolor.prBlue(mapfile, min_distance_txt)

                data_list = caculate_point(min_distance_txt)  # 格式：[[],[],[]]
                msg.incppoint = data_list
                msg.roadid = mapfile
                rospy.loginfo('mapfile read success!!!!')
                print(mapfile)

                x_list, y_list, head_list,vel_list = readMap.readMap(mapfile)
                # 未使用，发现计算出来的轨迹的航向和gps采集的有一定的出入。
                head_list_cal = calculate_head(x_list,y_list)
                # vel_list = [1 for _ in x_list]
                curva_list = [0 for _ in x_list] #曲率信息直接给0

                
                if plot_flag == 0: # 是否进行可视化，0-不可视化 1-可视化道路
                    plt.plot(x_list, y_list, marker='o', linestyle='', color='b', label="Map")
                    plt.xlabel('x')
                    plt.ylabel('y')
                    plt.title('Visualization of Position Points')
                    plt.legend()
                    plt.show()

                startpoint = [x_list[0],y_list[0]]
                x_list_pub = [0] * len(x_list)
                y_list_pub = [0] * len(x_list)

                head_list_pub = head_list
                vel_list_pub = vel_list
                curva_list_pub = curva_list

                for i in range(len(x_list_pub)):
                    x_list_pub[i] = x_list[i]-startpoint[0] # 每一个map的第一个点作为起点
                    y_list_pub[i] = y_list[i]-startpoint[1]
                msg.startpoint = startpoint

                trajectory = [list(coord) for coord in zip(x_list, y_list)]  
                flag = 1


            # 正式开始发送所需路径：
            routedata = []
            try:
                kdtree = KDTree(trajectory)
            except:
                continue
            curPos = [now_pos_x, now_pos_y]
            distances, indices = kdtree.query([curPos], k=1)  ##在全局中招mark点，不会因为轨
            mark = indices[0][0]
            mark_index = mark

            x_list_pub_1 = x_list_pub
            y_list_pub_1 = y_list_pub

            # 发送给控制的局部路径：
            x_list_1 = x_list[max(0, mark_index - 10) : min(len(x_list),mark_index + 15)]
            y_list_1 = y_list[max(0, mark_index - 10) : min(len(x_list),mark_index + 15)]
            head_list_pub_1 = head_list_pub[max(0, mark_index - 10) : min(len(x_list),mark_index + 15)]
            vel_list_pub_1 = vel_list_pub[max(0, mark_index - 10) : min(len(x_list),mark_index + 15)]
            curva_list_pub_1 = curva_list_pub[max(0, mark_index - 10) : min(len(x_list),mark_index + 15)]
            
            for i in range(len(x_list_1)):
                routedata.append(x_list_1[i])
                routedata.append(y_list_1[i])
                routedata.append(head_list_pub_1[i])
                routedata.append(vel_list_pub_1[i])
                routedata.append(curva_list_pub_1[i])
            routedata = [str(num) for num in routedata]

            end_time = time.time()

            msg.x_list = x_list_pub_1  ##做过offset后的 用于显示车辆行驶路径和测量位置的
            msg.y_list = y_list_pub_1
            msg.routedata = routedata ##依然维持x  y 的范围

            msg.startpoint = startpoint
            msg.endpoint = [x_list[-1], y_list[-1]]
            pub.publish(msg)

            time.sleep(0.01)
            point = [x_list[mark_index],y_list[mark_index]]

            prcolor.prBlue("mark_point_global_index:{},mark_point:{}".format(mark_index, point))
            end_time = time.time()
            process_time = end_time - start_time
            prcolor.prYellow("plan_main_time", process_time)



if __name__ == "__main__":
    try:
        main()
    except rospy.ROSInterruptException:
        pass
    rospy.spin()



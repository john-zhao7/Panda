#!/usr/bin/python3
# -*- coding: utf-8 -*-

# ------------------------------------------------------------------
########################panda_ws决策程序#############################
####################################################################
import sys
import os

# 加入库路径，实现vs调试功能
script_dirc = os.path.dirname(os.path.abspath(__file__))
relative_path = '../../../devel/lib/python3/dist-packages'
ico_path = os.path.join(script_dirc, relative_path)
sys.path.append(ico_path)


import rosparam
import signal
from car_interfaces.msg import HmiStartEndPointInterface, GlobalPathPlanningInterface
from sklearn.neighbors import KDTree
end_time = 0

work_space_name = "cotton_ws_panda"
world_center_x = 623789
world_center_y = 4068886
old_path = os.path.abspath('.')
new_path = old_path.replace(".ros", work_space_name)
decision_lib_file = os.path.join(new_path, 'src/decision/scripts/')
sys.path.append(decision_lib_file)

script_directory = os.path.dirname(os.path.abspath(__file__))
image_relative_path = 'lib'
icon_path = os.path.join(script_directory, image_relative_path)

sys.path.append(icon_path)
import prcolor,readMap


import threading
import rospy
import json
import std_msgs

import math
from visualization_msgs.msg import Marker, MarkerArray
import time

from hmi.msg import NodePointsInterface
import numpy as np
from lidar_select import point_select

is_exit = False

flag_map = 0

mapfile = ''

ROI_obj_dict_record = {}
#回调flag：
plan_flag = False
lidar_know_flag = False
lidar_unknow_flag = False
control_flag = False
gps_flag = False
#主函数flag
local_map_flag = False




def calculate_dis(x1, y1, x2, y2):
    # 计算两点之间的欧几里德距离
    return math.sqrt((x2 - x1) ** 2 + (y2 - y1) ** 2)

insec_point = []
station_point = []
mapfile = None

Cur_Roadid = None

is_exist = False

ROI_obj_dict = {}

ego_content = {}

before_road_points_num = 0
mark = 0
static_num = 0

truck_len = 5

offset_fromplan = 0

front_obj = None
left_front_obj = None
right_front_obj = None
front_obj_unkown = None
left_front_obj_unkown = None
right_front_obj_unkown = None
behind_obj = None
left_behind_obj = None
right_behind_obj = None

lateral_left_obj = None
lateral_right_obj = None

Decision_rviz_pub_dict = {'decision_state':False}

lidar_know_objs_list = []
lidar_unknow_objs_list = []

lidar_roi_obj_pub = rospy.Publisher('/lidar_roi_obj/from_Decision_to_PLan', std_msgs.msg.String, queue_size=10)
Emergency_brake_pub = rospy.Publisher('/emergency_brake_from_decision', std_msgs.msg.String, queue_size=10)
record = rospy.Publisher('/decision_record', std_msgs.msg.String, queue_size=10)
local_Map_dict = {}
lidar_know_objs_msg={}


def signal_handler(signal, frame):
    global is_exit
    is_exit = True



def call_back_unknow_lidar_msg(msg):
    global lidar_unknow_objs_msg
    global lidar_unknow_objs_list
    global lidar_unknow_flag
    try:
        lidar_unknow_objs_msg = json.loads(msg.data)
        lidar_unknow_objs_list = lidar_unknow_objs_msg['objects']
        # print("lidar_unknow_obj_dict:", lidar_unknow_objs_msg)

        lidar_unknow_flag = True

    except:
        lidar_unknow_objs_list = []
        print('lidar unknow data error')


# 惯导，雷达，相机信息接收
def call_back_lidar_msg(msg):
    global lidar_know_objs_msg
    global lidar_know_objs_list
    global lidar_know_flag
    try:
        lidar_know_objs_msg = json.loads(msg.data)
        lidar_know_objs_list = lidar_know_objs_msg['objects']
        # print(lidar_know_objs_list)
        lidar_know_flag = True
    except:
        lidar_know_objs_list = []
        print('lidar know data error')


# 获取offest
def callback_offset(msg):
    global offset_fromplan
    global control_flag
    CTE_data = json.loads(msg.data)
    # print(CTE_data,"*********************&*")
    try:
        offset_fromplan = CTE_data['CTE']
        control_flag = True
    except:
        print('offset_fromplan data error')


def call_back_ego_vehicle_data(msg):
    global ego_content
    global Cur_Roadid
    global before_road_points_num
    global gps_flag
    global now_speed

    try:
        GNSS_data = json.loads(msg.data)

        now_pos_x = GNSS_data["UTM_x"]
        now_pos_y = GNSS_data["UTM_y"]
        now_pos_head = GNSS_data["Head"]
        now_speed = GNSS_data["Speed"]
        now_pos_lat = GNSS_data["Lat"]
        now_pos_lon = GNSS_data["Lon"]
        ego_content['UTM_x'] = now_pos_x  # m
        ego_content['UTM_y'] = now_pos_y   # m
        ego_content['Speed'] = now_speed  # m/s
        ego_content['Lat'] = now_pos_lat
        ego_content['Lon'] = now_pos_lon
        ego_content['yaw'] = now_pos_head  # deg  （-180 -> 180 deg）
        # print(ego_content)
        gps_flag = True
    except:
        print('content error')

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
    global mapfile

    mapfile = msg.roadid
    plan_flag = True
    # print(mapfile)



def call_back_camera_msg(msg):
    global front_camera_dict
    try:
        front_camera_dict = json.loads(msg.data)
    except:
        print('camera data error')


# 点从后轴移到前轴
def target_point_move(target_dict):
    target_dict_front = {}
    wheelbase = 4.85  # 轴距
    pi = math.pi
    x_rear = target_dict['x']
    y_rear = target_dict['y']
    yaw_rear = target_dict['yaw']

    if yaw_rear == pi / 2:
        x_front = x_rear
        y_front = y_rear + wheelbase

    elif yaw_rear == - pi / 2:
        x_front = x_rear
        y_front = y_rear - wheelbase

    else:
        x_front = x_rear + wheelbase * math.cos(yaw_rear)
        y_front = y_rear + wheelbase * math.sin(yaw_rear)
    yaw_front = yaw_rear     # 航向角不变

    # target_dict_front = {'x': x_front, 'y': y_front, 'yaw': yaw_front}
    target_dict_front['x'] = x_front
    target_dict_front['y'] = y_front
    target_dict_front['yaw'] = yaw_front

    return target_dict_front




def nearest_lidar_obj_select(obj_list, ego_content, local_Map_dict, offset_fromplan):
    # local_Map_dict #虽然这里用的是local map，但是也是能算出来的，只需要的是一个索引之差
    object = 0
    left_value = 1.4
    right_value = -1.4
    left_left_value = 4.5
    right_right_value = -4.5
    print("offset_fromplan",offset_fromplan)
    #每次调用先清空
    obj_list_final_front = []
    obj_list_final_left_front = []
    obj_list_final_right_front = []
    obj_list_lateral_left = []
    obj_list_lateral_right = []

    obj_final_front_veh=None
    obj_final_left_front_veh=None
    obj_final_right_front_veh=None

    if obj_list is not None:
        # print(obj_list)
        for i in range(len(obj_list)):
            if obj_list[i] is not None:

                if obj_list[i]['dis_y']!=0:
                    # core_x为车头方向  core_y为车身方向
                    # vel_x为车头方向速度，vel_y为车身速度方向
                    dis_to_ego = math.sqrt(
                        math.pow(obj_list[i]['dis_y'], 2) + math.pow(obj_list[i]['dis_x'], 2))
                    theta_to_ego = math.atan2(obj_list[i]['dis_y'],
                                            obj_list[i]['dis_x']) * 180 / math.pi  # deg
                    # print("dis_to_ego",dis_to_ego,"theta_to_ego",theta_to_ego)
                    obj_list[i]['UTM_x'] = ego_content["UTM_x"] + dis_to_ego * math.cos(
                        (ego_content["yaw"] + theta_to_ego) * math.pi / 180)

                    obj_list[i]['UTM_y'] = ego_content["UTM_y"] + dis_to_ego * math.sin(
                        (ego_content['yaw'] + theta_to_ego) * math.pi / 180)

                    curPos = [ego_content["UTM_x"], ego_content["UTM_y"]]

                    curObj = [obj_list[i]['UTM_x'], obj_list[i]['UTM_y']]
                    
                    # 匹配点使用kdtree快速搜索，局部map+kdtree
                    trajectory = [list(coord) for coord in zip(local_Map_dict['X_list'], local_Map_dict['Y_list'])]
                    kdtree = KDTree(trajectory)
                    disobj, indices2 = kdtree.query([curObj], k=1)  ##
                    index_obj_l = indices2[0][0]




                    # 匹配点使用kdtree快速搜索，局部map+kdtree
                    trajectory = [list(coord) for coord in zip(local_Map_dict['X_list'], local_Map_dict['Y_list'])]
                    kdtree = KDTree(trajectory)
                    #构建kdtree自己寻找mark

                    # print("[ego_content",ego_content["UTM_x"],"ego_conteUTM_y",ego_content["UTM_y"])
                    # print("obj_list[i]['UTM_x']",obj_list[i]['UTM_x'],"obj_list[i]['UTM_y']",obj_list[i]['UTM_y'])
                    # print("curObj",curPos,curObj)
                    disego, indices1 = kdtree.query([curPos], k=1)  ##这里应该在局部map中找是最好的
                    index_ego_l = indices1[0][0]


                    # #超过5m的东西不会管
                    # index_obj_dis_to_true_obj = math.sqrt(
                    #     (obj_list[i]['UTM_x'] - local_Map_dict["X_list"][index_obj[5]])**2 + (obj_list[i]['UTM_y'] - local_Map_dict["Y_list"][index_obj[5]])**2
                    # )

                    # if index_obj_dis_to_true_obj > 5:
                    #     continue

                    # print("disobj",disobj,"index_obj_l",index_obj_l,"index_ego_l",index_ego_l)
                    obj_list[i]['s'] = (index_obj_l - index_ego_l)*0.3 #0.3 or 0.5 #- front_truck_len #是否需要标定
                    # obj_list[i]['s'] = index2s[index_obj] - index2s[index_ego]


                    #TODO L的求值逻辑：
                    if (index_obj_l == 0):
                        vector_1 = [(obj_list[i]['UTM_x'] - local_Map_dict['X_list'][index_obj_l]), (obj_list[i]['UTM_y'] - local_Map_dict['Y_list'][index_obj_l])]
                        vector_2 = [(obj_list[i]['UTM_x'] - local_Map_dict['X_list'][index_obj_l + 1]), (obj_list[i]['UTM_y'] - local_Map_dict['Y_list'][index_obj_l + 1])]
                        nearest_distance_lateral = (vector_1[0] * vector_2[1] - vector_1[1] * vector_2[0]) / \
                                                (math.sqrt((local_Map_dict['X_list'][index_obj_l] - local_Map_dict['X_list'][index_obj_l + 1]) ** 2 + (
                                                        local_Map_dict['Y_list'][index_obj_l] - local_Map_dict['Y_list'][index_obj_l + 1]) ** 2))
                    elif (index_obj_l == (len(local_Map_dict['X_list']) - 1)):
                        vector_1 = [(obj_list[i]['UTM_x'] - local_Map_dict['X_list'][index_obj_l]), (obj_list[i]['UTM_y'] - local_Map_dict['Y_list'][index_obj_l])]
                        vector_2 = [(obj_list[i]['UTM_x'] - local_Map_dict['X_list'][index_obj_l - 1]), (obj_list[i]['UTM_y'] - local_Map_dict['Y_list'][index_obj_l - 1])]
                        nearest_distance_lateral = -(vector_1[0] * vector_2[1] - vector_1[1] * vector_2[0]) / \
                                                (math.sqrt((local_Map_dict['X_list'][index_obj_l] - local_Map_dict['X_list'][index_obj_l - 1]) ** 2 + (
                                                        local_Map_dict['Y_list'][index_obj_l] - local_Map_dict['Y_list'][index_obj_l - 1]) ** 2))
                    else:
                        dis_match_point_left = math.sqrt(
                            (local_Map_dict['X_list'][index_obj_l - 1] - obj_list[i]['UTM_x']) ** 2 + (local_Map_dict['Y_list'][index_obj_l - 1] - obj_list[i]['UTM_y']) ** 2)

                        dis_match_point_right = math.sqrt(
                            (local_Map_dict['X_list'][index_obj_l + 1] - obj_list[i]['UTM_x']) ** 2 + (local_Map_dict['Y_list'][index_obj_l + 1] - obj_list[i]['UTM_y']) ** 2)

                        if (dis_match_point_left <= dis_match_point_right):
                            vector_1 = [(obj_list[i]['UTM_x'] - local_Map_dict['X_list'][index_obj_l]), (obj_list[i]['UTM_y'] - local_Map_dict['Y_list'][index_obj_l])]
                            vector_2 = [(obj_list[i]['UTM_x'] - local_Map_dict['X_list'][index_obj_l - 1]), (obj_list[i]['UTM_y'] - local_Map_dict['Y_list'][index_obj_l - 1])]
                            # try:
                            nearest_distance_lateral = (vector_1[0] * vector_2[1] - vector_1[1] * vector_2[0]) / \
                                                    (math.sqrt((local_Map_dict['X_list'][index_obj_l] - local_Map_dict['X_list'][index_obj_l - 1]) ** 2 + (
                                                            local_Map_dict['Y_list'][index_obj_l] - local_Map_dict['Y_list'][index_obj_l - 1]) ** 2))
                            # except ZeroDivisionError:
                            #     nearest_distance_lateral = 10000
                                
                        else:
                            vector_1 = [(obj_list[i]['UTM_x'] - local_Map_dict['X_list'][index_obj_l]), (obj_list[i]['UTM_y'] - local_Map_dict['Y_list'][index_obj_l])]
                            vector_2 = [(obj_list[i]['UTM_x'] - local_Map_dict['X_list'][index_obj_l + 1]), (obj_list[i]['UTM_y'] - local_Map_dict['Y_list'][index_obj_l + 1])]
                            # try:
                            nearest_distance_lateral = (vector_1[0] * vector_2[1] - vector_1[1] * vector_2[0]) / \
                                                    (math.sqrt((local_Map_dict['X_list'][index_obj_l] - local_Map_dict['X_list'][index_obj_l + 1]) ** 2 + (
                                                            local_Map_dict['Y_list'][index_obj_l] - local_Map_dict['Y_list'][index_obj_l + 1]) ** 2))
                        # except ZeroDivisionError:
                        #     nearest_distance_lateral = 10000

                    # obj_list[i]['l'] = abs(nearest_distance_lateral) #TODO 确定方向性
                    # 不一定非得用不清楚的正负去判断， dis_y比较好
                    if obj_list[i]['dis_y'] < 0:  ##y的左右正负
                        obj_list[i]['l'] = -abs(nearest_distance_lateral)
                    else:
                        obj_list[i]['l'] = abs(nearest_distance_lateral)

                    # obj_list[i]['l'] = index_obj_l
                    # if obj_list[i]['dis_y'] < 0:  ##y的左右正负
                    #     obj_list[i]['l'] = -disobj[0][0]
                    # else:
                    #     obj_list[i]['l'] = disobj[0][0]
                    # print("obj_list[i]['l']",)
                    # print("s,l",obj_list[i]['s'],obj_list[i]['l'])
                   
                    # todo 标定量是否迁移至外端
                    if 0 < obj_list[i]['s'] < 60 and obj_list[i]['object_z'] <= 4.5 and obj_list[i]['object_x'] <= 5  and obj_list[i]['object_y'] <= 17 :
                        if (obj_list[i]["l"] - offset_fromplan  < left_value) & (
                                obj_list[i]["l"] - offset_fromplan  > right_value):
                            obj_list_final_front.append(obj_list[i])
                        if (obj_list[i]["l"] - offset_fromplan < left_left_value) & (
                                obj_list[i]["l"] - offset_fromplan  >= left_value):    
                            obj_list_final_left_front.append(obj_list[i])
                        if (obj_list[i]["l"] - offset_fromplan  <= right_value) & (
                                obj_list[i]["l"] - offset_fromplan  >= right_right_value):
                            obj_list_final_right_front.append(obj_list[i])
                        # print(" offset_fromplan + 0.5*object",(obj_list[i]["l"] - offset_fromplan + 0.5*object))
                    
                    #将左右车道的障碍物的几何信息考虑进来，若进来，重新筛选进前方车道范围内

                    for j in range(len(obj_list_final_left_front)):
                        if obj_list_final_left_front[j]['l'] - offset_fromplan - 0.35*obj_list_final_left_front[j]['object_x'] < left_value:
                            obj_list_final_front.append(obj_list_final_left_front[j])

                    for j in range(len(obj_list_final_right_front)):
                        if obj_list_final_right_front[j]['l'] - offset_fromplan + 0.35*obj_list_final_right_front[j]['object_x'] > right_value:
                            obj_list_final_front.append(obj_list_final_right_front[j])


                    if -15 < obj_list[i]['s'] < 0:
                        if (obj_list[i]["l"] - offset_fromplan < left_left_value) & (
                                obj_list[i]["l"] - offset_fromplan > left_value):
                            obj_list_lateral_right.append(obj_list[i])
                            # obj_final_lateral_left_veh.append(obj_list[i])
                        if (obj_list[i]["l"] - offset_fromplan > right_right_value) & (
                                obj_list[i]["l"] - offset_fromplan < right_value):
                            obj_list_lateral_left.append(obj_list[i])
                            # obj_final_lateral_left_veh.append(obj_list[i])

                obj_list_final_front_dis = 60
                if len(obj_list_final_front) > 0:
                    for j in range(len(obj_list_final_front)):
                        if obj_list_final_front[j]["s"] < obj_list_final_front_dis:
                            if obj_list_final_front[j]['vel_x'] < 0:
                                obj_list_final_front[j]['Speed'] = -math.sqrt(obj_list_final_front[j]['vel_x']**2 + obj_list_final_front[j]['vel_y']**2)
                            else:
                                obj_list_final_front[j]['Speed'] = math.sqrt(obj_list_final_front[j]['vel_x']**2 + obj_list_final_front[j]['vel_y']**2)
                            obj_list_final_front_dis = obj_list_final_front[j]["s"]
                            obj_final_front_veh = obj_list_final_front[j]
                else:
                    obj_final_front_veh = None
                if obj_final_front_veh != None:
                    if obj_final_front_veh['l'] > 0:
                        object = - obj_final_front_veh["object_x"]
                    if obj_final_front_veh['l'] < 0:
                        object =  obj_final_front_veh["object_x"]
                   
                obj_list_final_left_front_dis = 60
                if len(obj_list_final_left_front) > 0:
                    for j in range(len(obj_list_final_left_front)):
                        if obj_list_final_left_front[j]["s"] < obj_list_final_left_front_dis:
                            if obj_list_final_left_front[j]['vel_x']<0:
                                obj_list_final_left_front[j]['Speed'] = -math.sqrt(obj_list_final_left_front[j]['vel_x']**2 + obj_list_final_left_front[j]['vel_y']**2)
                            else:
                                obj_list_final_left_front[j]['Speed'] = math.sqrt(obj_list_final_left_front[j]['vel_x']**2 + obj_list_final_left_front[j]['vel_y']**2)
                            obj_list_final_left_front_dis = obj_list_final_left_front[j]["s"]
                            obj_final_left_front_veh = obj_list_final_left_front[j]
                else:
                    obj_final_left_front_veh = None

                obj_list_final_right_front_dis = 60
                if len(obj_list_final_right_front) > 0:
                    for j in range(len(obj_list_final_right_front)):
                        if obj_list_final_right_front[j]["s"] < obj_list_final_right_front_dis:
                            if obj_list_final_right_front[j]['vel_x'] < 0:
                                obj_list_final_right_front[j]['Speed'] = -math.sqrt(obj_list_final_right_front[j]['vel_x']**2 + obj_list_final_right_front[j]['vel_y']**2)
                            else:
                                obj_list_final_right_front[j]['Speed'] = math.sqrt(obj_list_final_right_front[j]['vel_x']**2 + obj_list_final_right_front[j]['vel_y']**2)
                            obj_list_final_right_front_dis = obj_list_final_right_front[j]["s"]
                            obj_final_right_front_veh = obj_list_final_right_front[j]
                else:
                    obj_final_right_front_veh = None

    return obj_final_front_veh, obj_final_left_front_veh, obj_final_right_front_veh, obj_list_lateral_left, obj_list_lateral_right


# 筛选范围100m内的障碍物
def obj_select(obj_dict):
    selected_obj_list = []
    for i in range(len(obj_dict["objects"])):
        dis_to_ego = math.sqrt(math.pow(obj_dict["objects"][i]['core_y'], 2) + math.pow(obj_dict["objects"][i]['core_x'], 2))
        if dis_to_ego < 100:
            selected_obj_list.append(obj_dict["objects"][i])
    selected_obj_dict = {
        'objects' : selected_obj_list
    }
    return selected_obj_dict


# 滑动窗口非零平均值滤波
def moving_average_filter(lidar_msg):
    WINDOW_SIZE = 5  # 窗口大小
    THRESHOLD = 0.2  # 阈值
    
    buffer = []  # 窗口缓冲区
    filtered_msg = []  # 过滤后的稳定值

    for value in lidar_msg:
        buffer.append(value)  # 将值添加到缓冲区

        if len(buffer) > WINDOW_SIZE:
            buffer.pop(0)  # 如果缓冲区超过窗口大小，则移除最早的值

        if len(buffer) == WINDOW_SIZE:  # 当缓冲区填满时
            average = sum(buffer) / WINDOW_SIZE  # 计算窗口内的平均值

            if all(abs(val - average) < THRESHOLD for val in buffer):  # 判断窗口内的值是否都接近平均值
                filtered_msg.append(average)  # 稳定值通过滤波器输出

    return filtered_msg


def ROI_objs_select_from_camera_and_lidar():
    # input
    global front_camera_dict
    global lidar_know_objs_list

    global local_Map_dict
    global is_exit

    global local_map_flag
    global lidar_know_flag 
    global lidar_unknow_flag 
    global control_flag
    global now_speed
    # # output
    # global front_obj
    # global left_front_obj
    # global right_front_obj
    # global front_obj_unkown
    # global left_front_obj_unkown
    # global right_front_obj_unkown

    # global behind_obj
    # global left_behind_obj
    # global right_behind_obj

    global obj_list_lateral_left
    global obj_list_lateral_right
    global ego_content

    # global lateral_left_obj 
    # global lateral_right_obj 

    global ROI_obj_dict
    global offset_fromplan
    global ROI_obj_dict_record
    # ###初始化为None，对应无障碍物
    lidar_know_final_front_veh = None
    lidar_unknow_final_front_veh = None
    lidar_know_final_left_front_veh = None
    lidar_unknow_final_left_front_veh = None
    lidar_know_final_right_front_veh = None
    lidar_unknow_final_right_front_veh = None

    # obj_list_lateral_left = None
    # obj_list_lateral_right = None

    # lidar_know_lateral_left_veh,lidar_know_lateral_right_veh = [], []
    # lidar_unknow_lateral_left_veh,lidar_unknow_lateral_right_veh = [], []
    #后面有定义，应该是不用清空的——清空的逻辑在control中有出现过错误


    while not gps_flag or not lidar_unknow_flag or not lidar_know_flag or not control_flag or not local_map_flag:
        rospy.sleep(0.1)

    while not is_exit:
        # print(local_Map_dict)

        start_time = time.time()
        # print(111111)
        # prcolor.prBlue(lidar_know_objs_list)
        lidar_know_final_front_veh, lidar_know_final_left_front_veh, lidar_know_final_right_front_veh ,lidar_know_lateral_left_veh,lidar_know_lateral_right_veh= \
            nearest_lidar_obj_select(lidar_know_objs_list, ego_content, local_Map_dict, offset_fromplan)
    
        lidar_unknow_final_front_veh, lidar_unknow_final_left_front_veh, lidar_unknow_final_right_front_veh ,lidar_unknow_lateral_left_veh,lidar_unknow_lateral_right_veh =\
            nearest_lidar_obj_select(lidar_unknow_objs_list, ego_content, local_Map_dict, offset_fromplan)

        # 根据雷达信息筛选最终最近障碍物
        # 前方都有
        if lidar_know_final_front_veh is not None and lidar_unknow_final_front_veh is not None:
            if lidar_know_final_front_veh['s'] <= lidar_unknow_final_front_veh['s']:
                front_obj = lidar_know_final_front_veh
            else:
                #去掉未知障碍物
                front_obj = lidar_know_final_front_veh
        #只know
        elif lidar_know_final_front_veh is not None:
            front_obj = lidar_know_final_front_veh
        # 只unknow
        # elif lidar_unknow_final_front_veh is not None:
        #     front_obj = lidar_unknow_final_front_veh
        else:
            front_obj = None
        #左侧
        if lidar_know_final_left_front_veh is not None and lidar_unknow_final_left_front_veh is not None:
            if lidar_know_final_left_front_veh['s'] <= lidar_unknow_final_left_front_veh['s']:
                left_front_obj = lidar_know_final_left_front_veh
            else:
                left_front_obj = lidar_unknow_final_left_front_veh
        
        elif lidar_know_final_left_front_veh is not None:
            left_front_obj = lidar_know_final_left_front_veh

        elif lidar_unknow_final_left_front_veh is not None:
            left_front_obj = lidar_unknow_final_left_front_veh

        else:
            left_front_obj = None
        #右侧
        if lidar_know_final_right_front_veh is not None and lidar_unknow_final_right_front_veh is not None:
            if lidar_know_final_right_front_veh['s'] <= lidar_unknow_final_right_front_veh['s']:
                right_front_obj = lidar_know_final_right_front_veh
            else:
                right_front_obj = lidar_unknow_final_right_front_veh

        elif lidar_know_final_right_front_veh is not None:
            right_front_obj = lidar_know_final_right_front_veh
        elif lidar_unknow_final_right_front_veh is not None:
            right_front_obj = lidar_unknow_final_right_front_veh
        else:
            right_front_obj = None

        #NOTE unknow看效果了
        # 现在程序只有激光雷达会给出已知障碍物信息，上述逻辑暂时不需要
        # front_obj = lidar_know_final_front_veh
        # left_front_obj = lidar_know_final_left_front_veh
        # right_front_obj = lidar_know_final_right_front_veh

        # front_obj_unkown = lidar_unknow_final_front_veh
        # left_front_obj_unkown = lidar_unknow_final_left_front_veh
        # right_front_obj_unkown = lidar_unknow_final_right_front_veh
            

        # lateral_left_obj = lidar_know_lateral_left_veh + lidar_unknow_lateral_left_veh
        # lateral_right_obj = lidar_know_lateral_right_veh + lidar_unknow_lateral_right_veh 
            
        
        ROI_obj_dict = {
            'front_obj' : front_obj,
            'left_front_obj' : left_front_obj,
            'right_front_obj' : right_front_obj,
            # 'lateral_left_obj' : lateral_left_obj,
            # 'lateral_right_obj' : lateral_right_obj,
            # 'front_obj_unkown' :  front_obj_unkown
            # 'left_front_obj_unkown' : left_front_obj_unkown,
            # 'right_front_obj_unkown' : right_front_obj_unkown
        }

        prcolor.prYellow(ROI_obj_dict)
        # print("lateral_right_obj",lateral_right_obj)
        # print("lateral_left_obj",lateral_left_obj)
        # if front_obj == None and front_obj_unkown == None:
        #     Emergency_brake_dict = {"Emergency_brake_decision": False}
        # if now_speed < 4:
        #     now_speed_temp = now_speed
        # else:
        #     now_speed_temp = 4
        if front_obj != None and front_obj['s'] < 10+0.5*front_obj['object_y'] and front_obj['vel_x'] < now_speed:  
            prcolor.prRed(front_obj['s'])
            Emergency_brake_dict = {"Emergency_brake_decision": True}
            brake_record = True
            # Emergency_brake_pub.publish(json.dumps(Emergency_brake_dict)) #不用重复执行
            prcolor.prRed('Emergency_brake！！！！！！！！！')
        # elif front_obj_unkown!=None and front_obj_unkown['s'] < 10+truck_len:
        #     Emergency_brake_dict = {"Emergency_brake_decision": True}
        #     color_print_lib.prRed('Emergency_brake！！！！！！！！！')
        # elif front_obj_unkown!=None and front_obj != None and (front_obj_unkown['s'] < 10+truck_len or front_obj['s'] < 10+truck_len ):
        #     Emergency_brake_dict = {"Emergency_brake_decision": True}
        #     color_print_lib.prRed('Emergency_brake！！！！！！！！！')

        # elif  lateral_right_obj!=None :
        #     Emergency_brake_dict = {"Emergency_brake_decision": True}
        #     color_print_lib.prRed('Lateral！！！！！！！！')
        # elif  lateral_left_obj==None and  lateral_right_obj!= None :
        #     Emergency_brake_dict = {"Emergency_brake_decision": True}   
        #     color_print_lib.prRed('Lateral！！！！！！！！')
        # elif  lateral_left_obj==None and  lateral_right_obj== None :
        #     pass
        else:
            Emergency_brake_dict = {"Emergency_brake_decision": False}
            brake_record = False
            # Emergency_brake_pub.publish(json.dumps(Emergency_brake_dict))
        ROI_obj_dict_record = {'front_obj' : front_obj,
            'left_front_obj' : left_front_obj,
            'right_front_obj' : right_front_obj,
            'offset_fromplan':offset_fromplan,
            'now_speed':now_speed,
            'brake_record' : brake_record}
        Emergency_brake_pub.publish(json.dumps(Emergency_brake_dict))
        prcolor.prBlue("Emergency_brake_dict:", Emergency_brake_dict)
        record.publish(json.dumps(ROI_obj_dict_record))
        # if ROI_obj_dict['front_obj']:
        #     a = ROI_obj_dict['front_obj']
        #     dis_ax = ROI_obj_dict['front_obj'][0]['dis_x']
        #     dis_as = ROI_obj_dict['front_obj'][0]['s']
        #     prcolor.prGreen(f"front_obj:{a},{dis_ax},{dis_as}")

        # if ROI_obj_dict['left_front_obj']:
        #     b = ROI_obj_dict['left_front_obj']
        #     dis_bx = ROI_obj_dict['left_front_obj'][0]['dis_x']
        #     dis_bs = ROI_obj_dict['left_front_obj'][0]['s']
        #     prcolor.prBlue(f"left_front_obj:{b},{dis_bx},{dis_bs}")

        # if ROI_obj_dict['right_front_obj']:
        #     c = ROI_obj_dict['right_front_obj']
        #     dis_cx = ROI_obj_dict['right_front_obj'][0]['dis_x']
        #     dis_cs = ROI_obj_dict['right_front_obj'][0]['s']
        #     prcolor.prOrange(f"right_front_obj:{c},{dis_cx},{dis_cs}")


        lidar_roi_obj_pub.publish(json.dumps(ROI_obj_dict))

        time.sleep(0.01)    
        end_time = time.time()
        process_time = end_time - start_time
        prcolor.prYellow("decision_threading_select_time:{}".format(process_time))


def main():
    global Cur_Roadid
    global ego_content

    global front_obj
    global left_front_obj
    global right_front_obj

    global lidar_know_objs_list
    global lidar_know_objs_msg
    global static_num

    global front_obj
    global front_obj_unkown
    global flag_map

    global lateral_right_obj
    global lateral_left_obj
    global is_exit
    global local_Map_dict
    global mapfile
    global ROI_obj_dict

    #回调flag：
    global plan_flag 
    global gps_flag 
    global local_map_flag


    signal.signal(signal.SIGINT, signal_handler)

    rospy.init_node('car_decison', anonymous=False)
    rospy.Subscriber('/To_WireContorl_publisher', std_msgs.msg.String, callback_offset)
    rospy.Subscriber('/objectlist_json', std_msgs.msg.String, call_back_lidar_msg)  # 实际保留的雷达信息，
    rospy.Subscriber('/UnKnow_Lidar_from_lidar_to_decision', std_msgs.msg.String, call_back_unknow_lidar_msg)  #
    # rospy.Subscriber("hmi_start_end_point_data", HmiStartEndPointInterface, hmi_start_end_point_data_callback)
    rospy.Subscriber('/ztbus/location', std_msgs.msg.String, call_back_ego_vehicle_data)
    rospy.Subscriber("global_path_planning_data", GlobalPathPlanningInterface, global_path_planning_data_callback)



    rospy.logwarn('decision start Success')
    rospy.logwarn('请下发map信息')
    rospy.logwarn('等待gps消息')
    rospy.logwarn('请下发lidar信息')


    obj_select_threading = threading.Thread(target=ROI_objs_select_from_camera_and_lidar)
    obj_select_threading.start()

    while not plan_flag or not gps_flag :
        rospy.sleep(0.1)

    while not is_exit:

        start_time = time.time()
        if flag_map == 0 :#全局kdtree只需要一次
            Global_Map_Dict,x_list_global,y_list_global,head_list_global = readMap.readMap(mapfile)
            trajectory = [list(coord) for coord in zip(x_list_global, y_list_global)]
            kdtree = KDTree(trajectory)
            flag_map = 1

        # 截取局部地图
        if len(x_list_global)!=0:
            curPos = [ego_content['UTM_x'], ego_content['UTM_y']]
            distances, indices = kdtree.query([curPos], k=1)  ##在全局中招mark点，不会因为轨
            mark = indices[0][0]
            mark_index = mark
            # prcolor.prRed("mark_index",mark_index)

            x_list_local = x_list_global[max(0, mark_index - 50) : min(len(x_list_global),mark_index + 200)]
            y_list_local = y_list_global[max(0, mark_index - 50) : min(len(y_list_global),mark_index + 200)]
            # print("x_list_local",len(x_list_local))
            head_list_local = head_list_global[max(0, mark_index - 50) : min(len(head_list_global),mark_index+200)]
            local_Map_dict = {
            "X_list" : x_list_local ,
            "Y_list" : y_list_local ,
            "heading_list" : head_list_local}
            local_map_flag = True
        # print("local_Map_dict",local_Map_dict)
        time.sleep(0.01)
        end_time = time.time()
        process_time = end_time - start_time
        # prcolor.prYellow("decision_main_time", round(process_time,4))



if __name__ == "__main__":
    main()
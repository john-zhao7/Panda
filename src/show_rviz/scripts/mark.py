#!/usr/bin/env python3
#coding=utf-8
import rospy,math
from geometry_msgs.msg import Point, Quaternion
from visualization_msgs.msg import Marker
from tf.transformations import quaternion_from_euler
import json
import sys
import os


# 加入库路径，实现vs调试功能
script_dirc = os.path.dirname(os.path.abspath(__file__))
relative_path = '../../../devel/lib/python3/dist-packages'
ico_path = os.path.join(script_dirc, relative_path)
# print(ico_path)
sys.path.append(ico_path)

import std_msgs
import rospy
from nav_msgs.msg import Path
from geometry_msgs.msg import PoseStamped
from car_interfaces.msg import GlobalPathPlanningInterface

import os,sys
from car_interfaces.msg import GlobalPathPlanningInterface

import time

script_directory = os.path.dirname(os.path.abspath(__file__))
image_relative_path = 'lib'
icon_path = os.path.join(script_directory, image_relative_path)
sys.path.append(icon_path)

import prcolor,readMap


now_pos_x = 0
now_pos_y = 0
now_pos_head = 0
startpoint = []
x_list = []
y_list = []

endpoint = []
incppoint = []
plan_flag = False
gps_flag = False

marker_pub = rospy.Publisher("vehicle_marker", Marker, queue_size=10)  # 

path_pub = rospy.Publisher("trajectory", Path, queue_size=1)


def plan_map_callback(msg):
    global x_list, y_list
    x_list = list(msg.x_list)
    y_list = list(msg.y_list)

    # 输出填充后的值
    print("x_list:", x_list)
    print("y_list:", y_list)
    
#将-180~180转为0~2pi
def convert_deg_to_rad(degrees):
    return((degrees + 180) * (2 * math.pi / 360))

def call_back_CurGNSS(msg):
    global content
    global now_pos_x
    global now_pos_y
    global now_pos_head
    global gps_flag

    try:
        content = json.loads(msg.data)
        # print("now", now)
        now_pos_x = content["UTM_x"]#525913.2#content["UTM_x"]#now[0]#25810.633631279794#now[0]
        now_pos_y = content["UTM_y"]#4316333.7#content["UTM_y"]#now[1]#16495.487913915887#now[1]
        now_pos_head = content['Head']
        gps_flag = True
    except:
        print('content error')
        content = content


# 接收全局规划的消息，主要是路径点集合path_list = msg.routedata
def global_path_planning_data_callback(msg):
    path_list = []
    global endpoint
    global incppoint
    global startpoint
    global end_point
    global path_list_obj
    global path_list_obj_1
    global path_list1
    global plan_flag
    # global end_point
    global flag_con 
    global x_list, y_list
    x_list = list(msg.x_list)
    y_list = list(msg.y_list)
    incppoint = msg.incppoint
    endpoint = msg.endpoint


    startpoint = msg.startpoint
    plan_flag = True

def publish_path():

    global x_list, y_list
    # print("x_list:", x_list)
    # print("y_list:", y_list)
    path = Path()
    path.header.stamp = rospy.Time.now()
    path.header.frame_id = "/map"

    if x_list and y_list and len(x_list) == len(y_list):

        for x, y in zip(x_list, y_list):
            pose_stamped = PoseStamped()
            pose_stamped.header.stamp = rospy.Time.now()
            pose_stamped.header.frame_id = "/map"

            # 设置位置
            pose_stamped.pose.position.x = x
            pose_stamped.pose.position.y = y
            pose_stamped.pose.position.z = 0.0

            # 设置方向
            pose_stamped.pose.orientation.x = 0.0
            pose_stamped.pose.orientation.y = 0.0
            pose_stamped.pose.orientation.z = 0.0
            pose_stamped.pose.orientation.w = 1.0

            path.poses.append(pose_stamped)

    return path
            

def publish_mark():
    global content
    global now_pos_x
    global now_pos_y
    global now_pos_head
    global startpoint

    if len(startpoint) != 0:
        vehicle_position = Point()  #引入的lib中尽量不要有类
        vehicle_position.x = now_pos_x - startpoint[0]#+260 #offset为起点坐标
        vehicle_position.y = now_pos_y - startpoint[1]#-350
        vehicle_position.z = 0.0

        heading = convert_deg_to_rad(now_pos_head)

        marker = Marker()
        marker.header.frame_id = "map"  # 指定坐标系
        marker.type = Marker.CUBE  # 类型为立方体
        marker.action = Marker.ADD
        marker.pose.position = vehicle_position
        # 姿态
        quaternion = quaternion_from_euler(0, 0, heading)
        marker.pose.orientation.x = quaternion[0]
        marker.pose.orientation.y = quaternion[1]
        marker.pose.orientation.z = quaternion[2]
        marker.pose.orientation.w = quaternion[3]

        marker.scale.x = 12*3  # 立方体的长度
        marker.scale.y = 4.8*3  # 立方体的宽度
        marker.scale.z = 4.8*3  # 立方体的高度
        marker.color.a = 1.0
        marker.color.r = 1.0
        marker.color.g = 0.3
        marker.color.b = 0.2

        return marker


def publish_mark1(endpoint):
    if len(startpoint) != 0:
        # vehicle_position = Point()  #引入的lib中尽量不要有类
        # vehicle_position.x = endpoint[0] - startpoint[0]#+260 #offset为起点坐标
        # vehicle_position.y = endpoint[0] - startpoint[1]#-350
        # vehicle_position.z = 0.0
        marker = Marker()
        marker.header.frame_id = "map"  # 指定坐标系
        marker.type = Marker.SPHERE  # 类型为立方体
        marker.action = Marker.ADD
        # marker.pose.position = vehicle_position
        marker.pose.position.x = endpoint[0] - startpoint[0] # 终点的x坐标
        marker.pose.position.y = endpoint[1] - startpoint[1] # 终点的y坐标
        marker.pose.position.z = 0.0  # 终点的z坐标
        marker.scale.x = 10  # 立方体的长度
        marker.scale.y = 3.8  # 立方体的宽度
        marker.scale.z = 3.8  # 立方体的高度
        marker.color.a = 1.0
        marker.color.r = 1.0
        marker.color.g = 0.3
        marker.color.b = 0.2

        return marker

def publish_mark2(points):
    global startpoint
    if len(startpoint) != 0:
        markers = []
        for i in range(len(points)):
            marker = Marker()
            marker.header.frame_id = "map"
            marker.type = Marker.SPHERE
            marker.action = Marker.ADD
            marker.pose.position.x = points[i][0] - startpoint[0]
            # print(marker.pose.position.x)
            marker.pose.position.y = points[i][1] - startpoint[1]
            # print(marker.pose.position.y)
            marker.pose.position.z = 0.0
            marker.scale.x = 10
            marker.scale.y = 3.8
            marker.scale.z = 3.8
            marker.color.a = 1.0
            marker.color.r = 0.0
            marker.color.g = 1.0
            marker.color.b = 0.2
            markers.append(marker)

        return markers


def main():
    global content
    global now_pos_x
    global now_pos_y
    global now_pos_head
    global startpoint
    global endpoint
    global incppoint
    global plan_flag
    global gps_flag

    rospy.init_node("rviz_node")  
    rospy.Subscriber('/ztbus/location', std_msgs.msg.String, call_back_CurGNSS)
    rospy.Subscriber("global_path_planning_data", GlobalPathPlanningInterface, global_path_planning_data_callback)

    rospy.logwarn("show rviz success")

    while not rospy.is_shutdown() and not plan_flag and gps_flag:
            rospy.sleep(0.1)

    while not rospy.is_shutdown():
        publishers = []
        markers = []

        start_time =  time.time()
        if x_list and len(startpoint) != 0:
            path = publish_path()
            marker = publish_mark()
            marker_pub.publish(marker)
            path_pub.publish(path)

            points = [incppoint[i:i+2] for i in range(0, len(incppoint), 2)]
            for i in range(len(points)):
                marker_topic = "inc_mark{}".format(i)  # 使用索引创建唯一的名称
                pub = rospy.Publisher(marker_topic, Marker, queue_size=10)
                publishers.append(pub)
                marker = Marker()
                marker.header.frame_id = "map"
                marker.type = Marker.SPHERE
                marker.action = Marker.ADD
                marker.pose.position.x = points[i][0] - startpoint[0]
                # print(marker.pose.position.x)
                marker.pose.position.y = points[i][1] - startpoint[1]
                # print(marker.pose.position.y)
                marker.pose.position.z = 0.0
                marker.scale.x = 10
                marker.scale.y = 3.8
                marker.scale.z = 3.8
                marker.color.a = 1.0
                marker.color.r = 0.0
                marker.color.g = 1.0
                marker.color.b = 0.2
                markers.append(marker)

            for pub, marker in zip(publishers, markers):
                pub.publish(marker)

            time.sleep(0.01)
            end_time = time.time()
            process_time = end_time - start_time
            prcolor.prYellow("mark_main_time", process_time)

if __name__ == "__main__":
    main()
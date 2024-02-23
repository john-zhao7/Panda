#!/usr/bin/env python3
#coding=utf-8
##订阅雷达数据惯导数据，发布位姿和地图话题##
import rospy
from car_interfaces.msg import GpsImuInterface, SlamInterface, LidarOriInterface


def gps_imu_pub_data_callback(msg):
    # 处理消息
    rospy.loginfo("Received path_speed_tracking_data message")


def lidar_ori_data_callback(msg):
    # 处理消息
    rospy.loginfo("Received veh_operating_data message")





if __name__ == "__main__":
    rospy.init_node("slam_data_node")  
    rospy.logwarn("start")

    pub = rospy.Publisher("slam_data", SlamInterface, queue_size = 10) 
    
    rospy.Subscriber("gps_imu_pub", GpsImuInterface, gps_imu_pub_data_callback)


    rate = rospy.Rate(10)

    while not rospy.is_shutdown():
        
        rospy.loginfo("success")  
        msg = SlamInterface()

        pub.publish(msg)

        rate.sleep()
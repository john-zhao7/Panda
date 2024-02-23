#!/usr/bin/env python3
#coding=utf-8

import rospy
from car_interfaces.msg import CarDecisionInterface, VehOperatingData, VehOperatingStateInterface, FaultDiagnosisInterface,FaultDiagnostic


def car_decision_data_callback(msg):
    # 处理消息
    rospy.loginfo("Received car_decision_data message")


def fault_diagnosis_data_callback(msg):
    # 处理消息
    rospy.loginfo("Received fault_diagnosis_data message")



if __name__ == "__main__":
    rospy.init_node("veh_operating_node")  
    rospy.logwarn("start")

    pub_data = rospy.Publisher("veh_operating_data", VehOperatingData, queue_size = 10) 
    pub_state = rospy.Publisher("veh_operating_state_data", VehOperatingStateInterface, queue_size = 10) 


    rospy.Subscriber("car_decision_data", CarDecisionInterface, car_decision_data_callback)
    rospy.Subscriber("fault_diagnosis_data", FaultDiagnosisInterface, fault_diagnosis_data_callback)

    rate = rospy.Rate(10)

    while not rospy.is_shutdown():
        rospy.loginfo("success")  
        msg = VehOperatingData()
        msg1 = VehOperatingStateInterface()

        pub_data.publish(msg)
        pub_state.publish(msg1)

        rate.sleep()
#!/bin/bash
# data_publisher control msg
# gps planning control wirecontrol
rosbag record -O /home/newdrive/datebase/bag_file.bag  /car_ori_data /from_vcu_self_check /global_path_planning_data /To_WireContorl_publisher /data_publisher /ztbus/location /gps_imu /path_speed_tracking_data 
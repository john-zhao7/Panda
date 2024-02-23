#!/bin/bash
# 开机自启hmi：
# chengwulidar
# source ~/panda_ws/devel/setup.bash
nohup roslaunch lidar lidar_pub_sub.launch >/dev/null 2>&1 &

# gps
nohup roslaunch perception gps.launch >/dev/null 2>&1 &

# camera
# nohup /home/nvidia/Downloads/envs/YOLO/bin/python3 /home/nvidia/panda_ws/src/traffic_light/Traffic_light_detection.py >/dev/null 2>&1 &

nohup rosrun faultdiagnosis self_check.py >/dev/null 2>&1 &

# lidar
cd /home/nvidia/RoboSense/release_orin/release/build/demo
source ~/.bashrc
nohup ./rs_sdk_demo >/dev/null 2>&1 &
gnome-terminal --tab --title="RViz" -- bash -c "source ~/.bashrc; rosrun rviz rviz -d /home/nvidia/RoboSense/release_orin/release/config/rviz/perception.rviz; exec bash"

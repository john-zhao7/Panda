#!/bin/bash
#author CYUN
#description: 一键启动采棉机
gnome-terminal --title="Window2" -- bash -c "cd /home/nvidia/las/src/self_start/exp;./one_step_start2.sh;exec bash"

# gnome-terminal --title="Window2" -- bash -c "cd /home/nvidia/panda_ws/src/self_start/exp;./one_step_start2.sh;exec bash" 

# # sleep 5s
# # # record
# # gnome-terminal --title="Recorder" -- bash -c "cd /home/nvidia/panda_ws;source devel/setup.bash;rosbag record -O /home/nvidia/Documents/database/$(date +%m-%d_%H-%M) -a ;exec bash" 

##为了不生成太多的终端，可以直接分散开，之后换成不启动终端的；


# #roscore
# gnome-terminal --tab --title="roscore" -- bash -c "source ~/las/devel/setup.bash;export ROS_HOSTNAME=localhost;export ROS_MASTER_URI=http://localhost:11311;roscore; exec bash"
# sleep 1s
# # 开lidar
# gnome-terminal --tab --title="lidar_ex" -- bash -c "source ~/las/devel/setup.bash;rosrun lidar lidar; exec bash"
# # 开gps
# sleep 1s
# ##NOTE 
# #我没有加吗？？
# gnome-terminal --tab --title="gps_imu_pub" -- bash -c "source ~/las/devel/setup.bash;sudo chmod 777 /dev/ttyUSB0;rosrun perception gps_imu_pub.py; exec bash"
# # # camera
# sleep 1s
# gnome-terminal --tab --title="camera" -- bash -c "/home/nvidia/Downloads/envs/YOLO/bin/python3 /home/nvidia/panda_ws/src/traffic_light/Traffic_light_detection.py; exec bash"

# # 自检
# sleep 1s
# gnome-terminal --tab --title="self_check" -- bash -c "source ~/las/devel/setup.bash;rosrun faultdiagnosis self_check.py; exec bash"

# #故障诊断
# #NOTE
# gnome-terminal --tab --title="fault_diagnosis" -- bash -c "source ~/las/devel/setup.bash;rosrun faultdiagnosis fault_diagnosis.py; exec bash"

# # lidar-sdk
# sleep 1s
# gnome-terminal --tab --title="lidar_sdk" -- bash -c "cd /home/nvidia/RoboSense/release_orin/release/build/demo;source ~/las/devel/setup.bash;./rs_sdk_demo; exec bash"

# sleep 1s
# # rviz
# ##路径显示添加上去
# gnome-terminal --tab --title="RViz" -- bash -c "source ~/las/devel/setup.bash; rosrun rviz rviz -d /home/nvidia/RoboSense/release_orin/release/config/rviz/perception.rviz; exec bash"
# gnome-terminal --tab --title="RViz" -- bash -c "source ~/las/devel/setup.bash; rosrun rviz rviz -d /home/nvidia/las/src/planning/config/rviz15.rviz; exec bash"

# sleep 1s
# gnome-terminal --tab --title="Hmi" -- bash -c "source ~/las/devel/setup.bash;rosrun hmi hmi_node;exec bash"


# gnome-terminal  --title="Control" -- bash -c "source ~/las/devel/setup.bash;rosrun control path_speed_control.py; exec bash"
# sleep 3s
# gnome-terminal  --title="Plan" -- bash -c "source ~/las/devel/setup.bash; rosrun planning plan_net.py; exec bash"
# gnome-terminal  --title="show" -- bash -c "source ~/las/devel/setup.bash; rosrun show_rviz mark.py; exec bash"

# sleep 1s
# gnome-terminal --title="decision" -- bash -c "source ~/las/devel/setup.bash; rosrun decision decision.py; exec bash"
# sleep 1s
# gnome-terminal --title="Wirecontrol" -- bash -c "source ~/las/devel/setup.bash; rosrun wirecontrol wire_control_pub.py ; exec bash" 


# ##不显示终端版：
# nohup bash -c "source ~/las/devel/setup.bash;rosrun control path_speed_control.py" &
# sleep 1s
# nohup bash -c "source ~/las/devel/setup.bash; rosrun planning plan_net.py" &
# sleep 3s
# nohup bash -c "source ~/las/devel/setup.bash; rosrun decision decision.py" &
# sleep 1s
# nohup bash -c "source ~/las/devel/setup.bash; rosrun wirecontrol wire_control_pub.py " &

#!/bin/bash
#author CYUN
#description: 一键启动采棉机

# sleep 1s
# # 开roscore
# gnome-terminal --tab --title="roscore" -- bash -c "source  /opt/ros/noetic/setup.bash;roscore; exec bash"

# # 开gps
# sleep 5s
# gnome-terminal --tab --title="gps_imu_pub" -- bash -c "cd /home/nvidia/panda_ws;source devel/setup.bash;cd /home/nvidia/panda_ws; rosrun perception gps_imu_pub.py ; exec bash"


# sleep 5s
# gnome-terminal --tab --title="radar" -- bash -c "cd /home/nvidia/panda_ws;source devel/setup.bash;cd /home/nvidia/panda_ws; roslaunch pro_can radar_nodes.launch ; exec bash"

# sleep 8s
# gnome-terminal --tab --title="camera" -- bash -c "cd /home/nvidia/panda_ws;source devel/setup.bash;cd /home/nvidia/panda_ws/src/perception/scripts; python3 1.py ; exec bash"


# sleep 3s
# gnome-terminal --tab --title="fault_diagnosis" -- bash -c "cd /home/nvidia/panda_ws;source devel/setup.bash;cd /home/nvidia/panda_ws; rosrun faultdiagnosis fault_diagnosis.py ; exec bash"


# # # 开人机交互界面（点指令下发）
# sleep 5s
# gnome-terminal --tab --title="Hmi" -- bash -c "cd /home/nvidia/panda_ws;source devel/setup.bash;cd /home/nvidia/panda_ws; rosrun hmi hmi_node ; exec bash"

# # # 规划程序
# sleep 5s
# gnome-terminal --tab --title="Plan" -- bash -c "cd /home/nvidia/panda_ws;source devel/setup.bash;cd /home/nvidia/panda_ws; rosrun planning global_path_planning.py; exec bash"


# # # 控制
# sleep 5s
# gnome-terminal --tab --title="Control" -- bash -c "cd /home/nvidia/panda_ws;source devel/setup.bash;cd /home/nvidia/panda_ws; rosrun control path_speed_control.py; exec bash"


# # 显示CTE等信息
# sleep 5s
# gnome-terminal --tab --title="CTE_visual" -- bash -c "cd /home/nvidia/panda_ws;source devel/setup.bash;cd /home/nvidia/panda_ws; rosrun control cte_visual.py; exec bash"


# # 线控程序
# sleep 5s 
# gnome-terminal --tab --title="Wirecontrol" -- bash -c "cd /home/nvidia/panda_ws;source devel/setup.bash;cd /home/nvidia/panda_ws; rosrun wirecontrol wired_control.py ; exec bash" 


# roscore gps radar camera fault_diagnosis hmi
sleep 1s
gnome-terminal --title="Window1" -- bash -c "cd /home/nvidia/panda_ws/src/self_start/exp;./one_step_start1.sh;exec bash"

# Plan Control CTE_visual Wirecontrol
sleep 10s
gnome-terminal --title="Window2" -- bash -c "cd /home/nvidia/panda_ws/src/self_start/exp;./one_step_start2.sh;exec bash" 

# sleep 5s
# # record
# gnome-terminal --title="Recorder" -- bash -c "cd /home/nvidia/panda_ws;source devel/setup.bash;rosbag record -O /home/nvidia/Documents/database/$(date +%m-%d_%H-%M) -a ;exec bash" 

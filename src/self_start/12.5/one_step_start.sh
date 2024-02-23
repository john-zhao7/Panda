#!/bin/bash
#description: 一键启动

# 开gps
# sleep 1s
# gnome-terminal --tab --title="gps_imu_pub" -- bash -c "cd ~/cotton_ws_panda/devel;source setup.bash;roslaunch perception gps.launch; exec bash"
# sleep 2s
# gnome-terminal --tab --title="camera" -- bash -c "cd ~/cotton_ws_panda/devel;source setup.bash;cd /home/nvidia/cotton_ws_panda/src/yolov5_traffic_light;/home/nvidia/Downloads/envs/YOLO/bin/python3 Traffic_light_detection.py --weights /home/nvidia/cotton_ws_panda/src/yolov5_traffic_light/data/model/yolov5s_640/weights/best.pt --video_file 0;cd /home/nvidia/cotton_ws; rosrun usb_cam img_publisher ; exec bash"
# # 一堆那个
# # # 开人机交互界面
# sleep 5s
# # # 规划程序
# sleep 2s
# gnome-terminal --tab --title="Plan" -- bash -c "cd ~/panda_ws/devel;source setup.bash;rosrun planning plan_net.py; exec bash"

# nohup rosrun planning plan_net.py >/dev/null 2>&1 &
# nohup rosrun control path_speed_control11.py >/dev/null 2>&1 &
# gnome-terminal --tab --title="Control" -- bash -c "cd ~/panda_ws/devel;source setup.bash;rosrun control path_speed_control11.py; exec bash"
# rosrun control path_speed_control11.py
# source /home/cyun/panda_ws/devel/setup.bash

# # # 控制
# sleep 2s
# gnome-terminal --tab --title="Control" -- bash -c "cd ~/cotton_ws_panda/devel;source setup.bash;rosrun control path_speed_control11.py; exec bash"
# # # 控制
# sleep 2s
# gnome-terminal --tab --title="Decision" -- bash -c "cd ~/cotton_ws_panda/devel;source setup.bash;roslaunch decision decision.launch; exec bash"
# sleep 5s
# gnome-terminal --tab --title="fault_diagnosis" -- bash -c "cd ~/cotton_ws_panda/devel;source setup.bash;rosrun faultdiagnosis self_check.py; exec bash"
# # 线控程序
# sleep 5s
# gnome-terminal --tab --title="Wirecontrol" -- bash -c "cd ~/cotton_ws_panda/devel;source setup.bash;rosrun wirecontrol wire_contro_pub.py; exec bash" 


# 把source写到bashrc应该是可以的。
# source /home/cyun/panda_ws/devel/setup.bash
# nohup roslaunch perception gps.launch >/dev/null 2>&1 &

nohup rosrun planning plan_net.py >/dev/null 2>&1 &

nohup rosrun control path_speed_control.py >/dev/null 2>&1 &

#camera
# nohup /home/nvidia/Downloads/envs/YOLO/bin/python3 /home/nvidia/cotton_ws_panda/src/yolov5_traffic_light/Traffic_light_detection.py >/dev/null 2>&1 &

nohup roslaunch decision decision.launch >/dev/null 2>&1 &

nohup rosrun wirecontrol wire_contro_pub.py >/dev/null 2>&1 &

# 每一次不需要关闭的节点，也是不需要一键启动的节点：
# 

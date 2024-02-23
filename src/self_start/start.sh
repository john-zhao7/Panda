#!/bin/bash
# 开机启动并自检


sleep 1s
gnome-terminal --title="Window1" -- bash -c "cd /home/nvidia/las/src/self_start/exp;./one_step_start1.sh;exec bash"

# Plan Control CTE_visual Wirecontrol
# sleep 8s
# gnome-terminal --title="Window2" -- bash -c "cd /home/nvidia/panda_ws/src/self_start/exp;./one_step_start2.sh;exec bash" 


# rosrun hmi hmi_node
# cd /home/nvidia/RoboSense/release_orin/release/build/demo; source ~/.bashrc; ./rs_sdk_demo
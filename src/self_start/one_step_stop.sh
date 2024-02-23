#!/bin/bash

PROCESSB=$(ps -ef | grep path_speed_control.py | awk '{print $2}')
kill -9 $PROCESSB

PROCESSB=$(ps -ef | grep plan_net.py | awk '{print $2}')
kill -9 $PROCESSB

PROCESSB=$(ps -ef | grep decision.py | awk '{print $2}')
kill -9 $PROCESSB

PROCESSB=$(ps -ef | grep wire_control_pub.py | awk '{print $2}')
kill -9 $PROCESSB
PROCESSB=$(ps -ef | grep mark.py | awk '{print $2}')
kill -9 $PROCESSB
# gnome-terminal  --title="quit" -- bash -c "rosrun wirecontrol quiting_process.py; exec bash"
#f终端
# nohup bash -c "source ~/.bashrc;rosrun wirecontrol quiting_process.py" &
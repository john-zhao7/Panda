# passward:
# nvidia
# gnome-terminal --tab --title="canup" -- bash -c "cd /home/nvidia/panda_ws/src/self_start;sudo ip link set down can0; sudo ip link set can0 type can bitrate 250000;sudo ip link set up can0; exec bash"
#并添加readme
nohup bash -c "cd /home/nvidia/panda_ws/src/self_start;sudo ip link set down can0; sudo ip link set can0 type can bitrate 250000;sudo ip link set up can0;gedit ~/README.md" &

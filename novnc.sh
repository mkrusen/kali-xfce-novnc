#!/bin/bash

tmux new-session -d -s novnc
tmux send-keys -t novnc:0 "vncserver -kill :1" C-m
tmux send-keys -t novnc:0 "rm -f /tmp/.X1-lock" C-m
tmux send-keys -t novnc:0 "rm -f /tmp/.X11-unix/X1" C-m
tmux send-keys -t novnc:0 "vncserver -localhost no" C-m
tmux send-keys -t novnc:0 "cd /root/noVNC" C-m
tmux send-keys -t novnc:0 "./utils/launch.sh --vnc localhost:5901" C-m

#!/bin/bash

export ROS_MASTER_URI=http://bali.local:11311
export ROS_HOSTNAME=$(hostname).local
roslaunch freenect_launch freenect.launch

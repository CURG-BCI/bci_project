#!/bin/bash
MY_PATH=$PWD

wstool update

source /opt/ros/indigo/setup.bash

cd ${MY_PATH}/jaco_ws/src
catkin_init_workspace
cd ${MY_PATH}/jaco_ws
catkin_make

cd ${MY_PATH}/bci_project_ws/src
catkin_init_workspace
cd ${MY_PATH}/bci_project_ws
catkin_make

source devel/setup.bash

cd ${MY_PATH}/graspit_bci_ws/src
catkin_init_workspace
cd ${MY_PATH}/graspit_bci_ws/
catkin_make

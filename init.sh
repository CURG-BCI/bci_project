#!/bin/bash

abort()
{
	echo >&2 '
		ABORTED!!!! Setup did not complete successfully
		'
	exit 1
}
trap 'abort' 0

set -e
MY_PATH=$PWD

wstool update

source /opt/ros/indigo/setup.bash

cd ${MY_PATH}/graspit_bci_ws/src
if [ -f ${MY_PATH}/graspit_bci_ws/src/CMakeLists.txt ]; then
	source ${MY_PATH}/graspit_bci_ws/devel/setup.bash	
else
	catkin_init_workspace	
fi

cd ${MY_PATH}/graspit_bci_ws/
catkin_make



cd ${MY_PATH}/jaco_ws/src
if [ -f ${MY_PATH}/jaco_ws/src/CMakeLists.txt ]; then
	source ${MY_PATH}/jaco_ws/devel/setup.bash
else
	catkin_init_workspace
fi

cd ${MY_PATH}/jaco_ws
catkin_make

source ${MY_PATH}/jaco_ws/devel/setup.bash



cd ${MY_PATH}/bci_project_ws/src
if [ -f ${MY_PATH}/bci_project_ws/src/CMakeLists.txt ]; then
	source ${MY_PATH}/bci_project_ws/devel/setup.bash
else
	catkin_init_workspace
fi

cd ${MY_PATH}/bci_project_ws
catkin_make

trap : 0





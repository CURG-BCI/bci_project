export ROS_HOSTNAME=$(hostname).local
export ROS_MASTER_URI=http://bali.local:11311

source bci_project_ws/devel/setup.bash
source graspit_bci_ws/devel/setup.bash
source jaco_ws/devel/setup.bash --extend
source ../kinect2/devel/setup.bash --extend

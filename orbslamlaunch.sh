echo "running ROSCORE"
roscore&
cd ~/bagfiles
rosbag play session_5.bag /left/image_rect:=/camera/left/image_raw /right/image_rect:=/camera/right/image_raw&
source ~/VSLAM/ORB_SLAM2/Examples/ROS/ORB_SLAM2/build/devel/setup.bash
rosrun ORB_SLAM2 Stereo home/sal/VSLAM/ORB_SLAM2/Vocabulary/ORBvoc.txt home/sal/VSLAM/ORB_SLAM2/params/zed.yaml



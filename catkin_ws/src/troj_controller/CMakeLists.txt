cmake_minimum_required(VERSION 2.8.3)
project(troj_controller)

## Find catkin and any catkin packages
find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs  message_generation moveit_ros_planning_interface)

## Declare ROS messages and services
add_message_files(DIRECTORY msg FILES Servo.msg ServoArray.msg ServoConfig.msg ServoConfigArray.msg Position.msg PositionArray.msg)


## Generate added messages and services
generate_messages(DEPENDENCIES std_msgs)

## Declare a catkin package
catkin_package(CATKIN_DEPENDS roscpp std_msgs message_runtime)

## Build talker and listener
include_directories(include ${catkin_INCLUDE_DIRS})
link_directories(${catkin_LIBRARY_DIRS})




  

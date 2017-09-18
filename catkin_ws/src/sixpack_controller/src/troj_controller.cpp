#include "ros/ros.h"

#include <sstream>

#include "i2cpwm_board/Servo.h"
#include "i2cpwm_board/ServoArray.h"

#include "i2cpwm_board/ServoConfig.h"
#include "i2cpwm_board/ServoConfigArray.h"

#include "i2cpwm_board/ServosConfig.h"

#include <sensor_msgs/JointState.h>

//new include space
#include <moveit/move_group_interface/move_group.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>

#include <moveit_msgs/DisplayRobotState.h>
#include <moveit_msgs/DisplayTrajectory.h>

#include <moveit_msgs/AttachedCollisionObject.h>
#include <moveit_msgs/CollisionObject.h>
//end new include space 





/*
void print_states(const sensor_msgs::JointState::ConstPtr& msg)
{
  
//float position[] = msg->position;
ROS_INFO("Joint1=%f Joint2=%f", msg->position[1], msg->position[2]);

}
*/

int main(int argc, char **argv)
{


ros::init(argc, argv, "troj_controller");

ros::NodeHandle n; 

//ros::Publisher servo_pub = n.advertise<i2cpwm_board::ServoArray>("/servos_absolute", 1000);

//ros::Subscriber joint_state_sub = n.subscribe("joint_states", 1000, print_states);

ros::Rate loop_rate(10);


//new

ros::Publisher display_publisher = n.advertise<moveit_msgs::DisplayTrajectory>("/move_group/display_planned_path", 1, true);
  moveit_msgs::DisplayTrajectory display_trajectory;

moveit::planning_interface::MoveGroup group("arm");
moveit::planning_interface::PlanningSceneInterface planning_scene_interface;
//new


 while (ros::ok())
 	 {
	//new
	ROS_INFO("Reference frame: %s", group.getPlanningFrame().c_str());
  

	ROS_INFO("Reference frame: %s", group.getEndEffectorLink().c_str());
	//new
/*	i2cpwm_board::Servo servo1;
	i2cpwm_board::Servo servo2;
	i2cpwm_board::Servo servo3;
	i2cpwm_board::Servo servo4;
*/	
	
	float pwmServo1=100;
	float pwmServo2=150;
	float pwmServo3=180;
	float pwmServo4=100;

/*	
	float pwmServo1=200;
	float pwmServo2=300;
	float pwmServo3=200;
	float pwmServo4=200;
*/

/*
	servo1.servo=1;
	servo1.value=pwmServo1;
	
	servo2.servo=2;
	servo2.value=pwmServo2;
	
	servo3.servo=4;
	servo3.value=pwmServo3;

	servo4.servo=5;
	servo4.value=pwmServo4;

	i2cpwm_board::ServoArray msg;

	msg.servos.push_back(servo1);
	msg.servos.push_back(servo2);
	//msg.servos.push_back(servo3);
	//msg.servos.push_back(servo4);

	servo_pub.publish(msg);
*/
  geometry_msgs::Pose target_pose1;
  //target_pose1.orientation.w = 1.0;
  target_pose1.position.x = 0;
  target_pose1.position.y = 0.17;
  target_pose1.position.z = 0.2	;
  group.setPoseTarget(target_pose1);
group.setGoalTolerance(5);
 moveit::planning_interface::MoveGroup::Plan my_plan;
  bool success = group.plan(my_plan);

  ROS_INFO("Visualizing plan 1 (pose goal) %s",success?"":"FAILED");    
  /* Sleep to give Rviz time to visualize the plan. */
  sleep(5.0); 


ROS_INFO("Visualizing plan 1 (again)");
  display_trajectory.trajectory_start = my_plan.start_state_;
  display_trajectory.trajectory.push_back(my_plan.trajectory_);
  display_publisher.publish(display_trajectory);
  /* Sleep to give Rviz time to visualize the plan. */
  sleep(5.0);





	ros::spinOnce();
	loop_rate.sleep();
	}
  return 0;
}


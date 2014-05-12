#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <tf/transform_broadcaster.h>
#include <skeleton_markers/Skeleton.h>
#include "geometry_msgs/Twist.h"
#include <XnOpenNI.h>
#include <math.h>
#include <std_msgs/String.h>

using namespace std;

int main(int argc, char** argv){
  ros::init(argc, argv, "my_tf_listener");
  ros::NodeHandle node;

  ros::Publisher move_vel = node.advertise<geometry_msgs::Twist>("cmd_vel",10);
  /*ros::Publisher whattosay = 
       node.advertise<std_msgs::String>("/audio_say", 1);*/

	tf::TransformListener listener_head;
	tf::TransformListener listener_RH;
	tf::TransformListener listener_LH;	
	tf::TransformListener listener_righthip;
	tf::TransformListener listener_lefthip;
	tf::TransformListener listener_torso;
	tf::TransformListener listener_neck;
	tf::TransformListener listener_Lknee;
	static tf::StampedTransform transform_head;
	static tf::StampedTransform transform_RH;
	static tf::StampedTransform transform_LH;
	static tf::StampedTransform transform_righthip;
	static tf::StampedTransform transform_lefthip;
	static tf::StampedTransform transform_torso;
	static tf::StampedTransform transform_neck;
	static tf::StampedTransform transform_Lknee;

  int counter = 0;
  geometry_msgs::Twist vel_msg;


  ros::Rate rate(5.0);
    
    while (node.ok())
    {   
        try{
            listener_RH.lookupTransform("/openni_depth_frame", "/head_1",
                               ros::Time(0), transform_head);
        }
        catch (tf::TransformException ex){
     				 ROS_ERROR("%s",ex.what());
        }
        
        try{
            listener_RH.lookupTransform("/openni_depth_frame", "/right_hand_1",
                               ros::Time(0), transform_RH);
        }
        catch (tf::TransformException ex){
     				 ROS_ERROR("%s",ex.what());
        }
        
        try{
            listener_LH.lookupTransform("/openni_depth_frame", "/left_hand_1",
                               ros::Time(0), transform_LH);
        }
        catch (tf::TransformException ex){
     				 ROS_ERROR("%s",ex.what());
        }
        
        try{
            listener_LH.lookupTransform("/openni_depth_frame", "/torso_1",
                               ros::Time(0), transform_torso);
        }
        catch (tf::TransformException ex){
     				 ROS_ERROR("%s",ex.what());
        }

        try{
            listener_LH.lookupTransform("/openni_depth_frame", "/neck_1",
                                ros::Time(0), transform_neck);
        }
        catch (tf::TransformException ex){
     				 ROS_ERROR("%s",ex.what());
        }	

        try{
            listener_Lknee.lookupTransform("/openni_depth_frame", "/left_knee_1",
                               ros::Time(0), transform_Lknee);
        }
        catch (tf::TransformException ex){
     				 ROS_ERROR("%s",ex.what());
        }
        
        try{
            listener_lefthip.lookupTransform("/openni_depth_frame", "/left_hip_1",
                               ros::Time(0), transform_lefthip);
        }
        catch (tf::TransformException ex){
     				 ROS_ERROR("%s",ex.what());
        }	

    //Follow the hand.
    if((transform_LH.getOrigin().z() > transform_head.getOrigin().z()) == 1)
    {
      static tf::TransformListener lis;
        try
        {
            lis.lookupTransform("/base_link", "/left_hand_1",
                               ros::Time(0), transform_LH);
        }
        catch (tf::TransformException ex)
        {
     				 ROS_ERROR("%s",ex.what());
        }

        std::cout<<"Turning right!"<<std::endl;      
        vel_msg.angular.z = 0.1 * atan2(transform_LH.getOrigin().y(),transform_LH.getOrigin().x());
        vel_msg.linear.x = 0 * (sqrt(pow(transform_LH.getOrigin().x(), 2) + pow(transform_LH.getOrigin().y(), 2)));
        move_vel.publish(vel_msg);
    }


    /*if((transform_RH.getOrigin().z()>transform_head.getOrigin().z()) == 1){
        std::cout<<"left hand high five!"<<std::endl;
        if(arr[1] == false){
            ss << "left hand high five";
            msg.data = ss.str();
            current = count;
            whattosay.publish(msg);
            ROS_INFO("%s", msg.data.c_str());
            for(int i=0; i<4; i++){
                arr[i] = false;
            }
            arr[1] = true;
        }
	}*/
    ros::spinOnce();
    rate.sleep();
  }
  return 0;
};

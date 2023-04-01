#!/bin/bash
# Apache License 2.0
# Copyright (c) 2020, ROBOTIS CO., LTD.

echo "[Update the package lists]"
sudo apt update -y

echo "[Install package rplidar_s2]"
cd ~/catkin_ws/src && git clone https://github.com/Slamtec/rplidar_ros.git && git clone https://github.com/ros/common_msgs.git

echo "[Install package realsense2 camera]"
sudo apt-get install ros-noetic-ddynamic-reconfigure
sudo apt-get install ros-noetic-realsense2* -y
cd ~/catkin_ws/src && git clone -b ros1-legacy https://github.com/IntelRealSense/realsense-ros.git 

echo "[Install package laser filter]"
cd ~/catkin_ws/src && git clone -b noetic-devel https://github.com/ros-perception/laser_filters.git

echo "[Update the package slam_toolbox]"
sudo apt-get install ros-noetic-slam-toolbox -y && sudo apt-get install ros-noetic-global-planner -y
cd ~/catkin_ws/src && git clone -b noetic-devel https://github.com/SteveMacenski/slam_toolbox.git

#ยังลงไม่ได้ติด error
echo "[Update the package ar_track_alvar]"
cd ~/catkin_ws/src && git clone -b noetic-devel https://github.com/machinekoder/ar_track_alvar.git

echo "[Update the package rosbridge]"
sudo apt-get install ros-noetic-rosbridge* -y

cd ~/catkin_ws && catkin_make

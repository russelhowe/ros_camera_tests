#!/bin/bash
docker run -d --rm \
    --env DISPLAY=:0.0 \
    --env QT_X11_NO_MITSHM=1 \
    --name=reconfigure \
    --env ROS_HOSTNAME=reconfigure \
    --env ROS_MASTER_URI=http://master:11311 \
    --device /dev/dri:/dev/dri \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    --network vimbacamera_robot \
    osrf/ros:kinetic-desktop-full \
    rosrun rqt_reconfigure rqt_reconfigure

#!/bin/bash

# Start a shell on the ROS network

docker run -it --rm \
    --env DISPLAY=:0.0 \
    --env QT_X11_NO_MITSHM=1 \
    --name=interactive \
    --env ROS_HOSTNAME=interactive \
    --env ROS_MASTER_URI=http://master:11311 \
    --device /dev/dri:/dev/dri \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    --network vimbacamera_robot \
    osrf/ros:kinetic-desktop-full \
    /bin/bash

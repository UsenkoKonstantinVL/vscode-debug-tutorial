FROM osrf/ros:noetic-desktop

RUN echo "source /opt/ros/noetic/setup.bash" >> /root/.bashrc

RUN apt-get update && apt-get install -y libc6-dbg gdb valgrind
RUN apt-get update && apt-get install -y python3-catkin-tools

WORKDIR /catkin_ws/

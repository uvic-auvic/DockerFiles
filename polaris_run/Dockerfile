# This is an auto generated Dockerfile for ros:ros-base
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:kinetic-ros-core-xenial

# install packages
RUN /bin/bash -c "apt-get update && apt-get install -y \
  ros-kinetic-desktop-full \
	python-rosinstall \
	python-rosinstall-generator \
	python-wstool \
	build-essential \
	python-pip \
	ros-kinetic-serial \
	ros-kinetic-cv-bridge \
	ros-kinetic-web-video-server \
	ros-kinetic-rosbridge-suite \
	fftw3 fftw3-dev pkg-config \
    && rm -rf /var/lib/apt/lists/*"

# TODO orbslam2 loading, and dependencies?


# Run for building and testing

WORKDIR /var/polaris
 
# Should be equiv to CMD /bin/bash -c '. /opt/ros/kinetic/setup.bash; catkin_make;'
ENTRYPOINT /bin/bash -c 'cd /var/polaris/ros; source ./env.sh; roslaunch rov.launch'



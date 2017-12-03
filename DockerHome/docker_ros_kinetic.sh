# install ros on docker
sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 0xB01FA116
apt-get update

apt-get install ros-kinetic-desktop-full
apt install python-rosdep
rosdep init
apt update
rosdep update

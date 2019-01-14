sudo apt update && sudo apt install curl gnupg2 lsb-release
curl http://repo.ros2.org/repos.key | sudo apt-key add -

sudo sh -c 'echo "deb [arch=amd64,arm64] http://packages.ros.org/ros2/ubuntu `lsb_release -cs` main" > /etc/apt/sources.list.d/ros2-latest.list'

sudo apt update
sudo apt install ros-crystal-desktop
sudo apt install ros-crystal-ros-base
sudo apt install python3-argcomp
sudo apt install ros-crystal-rmw-opensplice-cpplete
sudo apt install ros-crystal-rmw-connext-cpp


echo 'Congratulations! you are installed ros2 crystal!'

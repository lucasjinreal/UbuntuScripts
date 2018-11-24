
sudo sh -c '. /etc/lsb-release && echo "deb http://mirrors.tuna.tsinghua.edu.cn/ros/ubuntu/ $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/ros-latest.list'

sudo apt-key adv --keyserver hkp://pgp.mit.edu:80  --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

sudo apt update
sudp apt install ros-melodic-desktop-full

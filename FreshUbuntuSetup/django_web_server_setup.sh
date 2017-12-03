# !/bin/bash
# this script for ubuntu16.04 for now

# install pip3
sudo apt update
sudo apt install -i python3-pip

# install oh-my-zsh
sudo apt -y install curl
sudo apt -y install wget
sudo apt -y install zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
sudo chsh -s /bin/zsh

# install nginx and supervisor and postgresql
sudo apt -y install nginx
sudo apt -y install supervisor
sudo apt -y install postgresql
sudo apt -y install libpq-dev

# fix tencent-cloud issue
echo export LC_ALL=C >> ~/.bashrc
source ~/.bashrc
echo export LC_ALL=C >> ~/.zshrc
source ~/.zshrc

# install python3 packages
sudo pip3 install django
sudo pip3 install gunicorn
sudo pip3 install psycopg2
sudo pip3 install djangorestframework
sudo pip3 install pillow
sudo pip3 install qiniu
sudo pip3 install numpy


# download sample gunicorn conf and supervisor conf and nginx conf to ~/SampleConfs
cd ~
mkdir SampleConfs
cd SampleConfs
wget https://github.com/jinfagang/UbuntuScripts/raw/master/FreshUbuntuSetup/sample_confs/sample_gunicorn.conf
wget https://github.com/jinfagang/UbuntuScripts/raw/master/FreshUbuntuSetup/sample_confs/sample_supervisor.conf
wget https://github.com/jinfagang/UbuntuScripts/raw/master/FreshUbuntuSetup/sample_confs/lewisjin_nginx
echo "settings save into ~/SampleConfs"
echo "all done!"
echo "restarting system"

# install imgcat to view image in terminal
cd ~
wget https://raw.githubusercontent.com/gnachman/iTerm2/master/tests/imgcat
mv imgcat /usr/local/bin
echo "alias imgcat='bash /usr/local/bin/imgcat'" >> ~/.zshrc && source ~/.zshrc

sudo reboot

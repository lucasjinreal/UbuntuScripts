# !/bin/bash
# this script for ubuntu16.04 for now

# install pip3
sudo apt update
sudo apt install python3-pip

# change pip source to tsinghua mirror
pip_config_file=${HOME}"/.pip/pip.cnf"
pip_dir=${HOME}"/.pip"
echo ${pip_config_file}

if [ -f ${pip_config_file} ]
then
	echo "pip.cnf aleady exist."
	:> ${pip_config_file}
	echo "[global]" >> ${pip_config_file}
	echo "index-url = https://pypi.tuna.tsinghua.edu.cn/simple" >> ${pip_config_file}
	echo "[install]" >> ${pip_config_file}
	echo "trusted-host=mirrors.aliyun.com" >> ${pip_config_file}
else
	mkdir ${pip_dir}
	touch ${pip_config_file}
	echo "[global]" >> ${pip_config_file}
	echo "index-url = https://pypi.tuna.tsinghua.edu.cn/simple" >> ${pip_config_file}
	echo "[install]" >> ${pip_config_file}
	echo "trusted-host=mirrors.aliyun.com" >> ${pip_config_file}
fi
echo "pip conf file established success!"

# install oh-my-zsh
sudo apt install curl
sudo apt install wget
sudo apt install zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
sudo chsh -s /bin/zsh

# install nginx and supervisor and postgresql
sudo apt install nginx
sudo apt install supervisor
sudo apt install postgresql
sudo apt install libpq-dev

# fix tencent-cloud issue
# export LC_ALL=C

# install python3 packages
sudo pip3 install django
sudo pip3 install gunicore
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

echo "---- welcome to ubuntu server setup script ----"
echo "                by JinFagang (c) 2017          "
echo "---- changing pip install source ----"
# change pip source to tsinghua mirror
cd ~
mkdir .pip
cd .pip
wget https://github.com/jinfagang/UbuntuScripts/raw/master/confs/pip.conf
cd ..
sudo chmod -R 777 .pip

echo "---- updating system ----"
# install pip3
sudo apt update
sudo apt install python3-pip

echo "---- install install nginx and supervisor and postgresql ----"
# install nginx and supervisor and postgresql
sudo apt install nginx
sudo apt install supervisor
sudo apt install postgresql
sudo apt install libpq-dev
sudo apt install axel


echo "---- install python3 packages ----"
# install python3 packages
sudo pip3 install django
sudo pip3 install gunicore
sudo pip3 install psycopg2
sudo pip3 install djangorestframework
sudo pip3 install pillow

echo "---- install imgcat ----"
wget https://github.com/jinfagang/UbuntuScripts/raw/master/ShellRepo/imgcat
sudo mv imgcat /usr/local/bin/
echo 'alias imgcat="bash /usr/local/bin/imgcat"' >> ~/.zshrc
source ~/.zshrc

# download sample gunicorn conf and supervisor conf and nginx conf to ~/SampleConfs
cd ~
mkdir WebServerConfs
cd WebServerConfs
wget https://github.com/jinfagang/UbuntuScripts/raw/master/FreshUbuntuSetup/sample_confs/sample_gunicorn.conf
wget https://github.com/jinfagang/UbuntuScripts/raw/master/FreshUbuntuSetup/sample_confs/sample_supervisor.conf
wget https://github.com/jinfagang/UbuntuScripts/raw/master/FreshUbuntuSetup/sample_confs/lewisjin_nginx
echo "settings save into ~/SampleConfs"

echo "---- install Golang ------"
#axel -n 50 https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz
sudo apt install golang-1.8-go
echo "---- install oh-my-zsh ----"
# install oh-my-zsh
sudo apt install curl
sudo apt install wget
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

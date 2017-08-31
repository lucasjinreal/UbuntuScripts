#!/bin/bash
echo "=========installing Chinese input source=========="
sudo add-apt-repository ppa:fcitx-team/nightly  
sudo apt update
sudo apt install fcitx
sudo apt -f install
sudo apt install fcitx-config-gtk 
sudo apt install im-switch
echo "=========installing googlepinyin input method=========="
sudo apt install fcitx-googlepinyin


# change pip source to tsinghua mirror
cd ~
mkdir .pip
cd .pip
wget https://github.com/jinfagang/UbuntuScripts/raw/master/confs/pip.conf
cd ..
sudo chmod -R 777 .pip

echo "=========setting up python3 library=========="
sudo apt update
sudo apt install python3-pip
sudo pip3 install --upgrade pip
sudo pip3 install scipy
sudo pip3 install matplotlib
sudo pip3 install pandas
sudo pip3 install keras
sudo pip3 install scikit-image


echo "=========installing zsh-a beautiful terminal=========="
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "All Done! Congratulations! Enjoy your Ubuntu!"
echo "Please manually reboot your system now!"

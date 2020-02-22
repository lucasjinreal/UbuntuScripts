#!/bin/bash

# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

# Bold
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

# Underline
UBlack='\033[4;30m'       # Black
URed='\033[4;31m'         # Red
UGreen='\033[4;32m'       # Green
UYellow='\033[4;33m'      # Yellow
UBlue='\033[4;34m'        # Blue
UPurple='\033[4;35m'      # Purple
UCyan='\033[4;36m'        # Cyan
UWhite='\033[4;37m'       # White

welcome(){
    echo -e ${Blue}"========================= UbuntuScripts Setup ========================="${Color_Off}
    echo -e "                       ${BWhite}author by: Lucas Jin"
    echo -e "                       start from 2017-2020"
    echo -e "                       website: jinfagang.github.io"${Color_Off}
    echo -e ${Blue}"----------------------------- MIT License ----------------------------"${Color_Off}
}

welcome


print_msg()
{
    echo -e "\n\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"${BWhite}$1${Color_Off}"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
}


############### For begin ###################
print_msg "installing Chinese input source"
sudo add-apt-repository -y ppa:fcitx-team/nightly  
sudo apt update
sudo apt install -y fcitx
sudo apt -f install
sudo apt install -y fcitx-config-gtk 
sudo apt install -y  im-switch
sudo apt install -y fcitx-googlepinyin
sudo apt install -y curl
sudo apt-get install -y fonts-powerline


############### For Deeplearning deps ##############
print_msg "Installing Deep Learning Depencies"
sudo apt install -y libatalas-base-dev
sudo apt install -y fonts-noto-color-emoji
sudo apt install -y ffmpeg
sudo apt install -y libgoogle-glog-dev
sudo apt install -y libatlas-dev libatlas-base-dev
sudo apt install -y libboost1.58-all-dev libhdf5-dev
sudo apt install -y autoconf
sudo apt install -y liblmdb-dev
#sudo apt install -y python3-pip
sudo easy_install pip
sudo easy_install pip3
sudo apt-get install --assume-yes build-essential cmake cmake-gui checkinstall git libgtk2.0-dev pkg-config python-dev libboost-all-dev  libdc1394-22 libdc1394-22-dev libjpeg-dev libpng12-dev libtiff5-dev libjasper-dev libavcodec-dev libavformat-dev libswscale-dev libxine2-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev libtbb-dev libqt4-dev libfaac-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utils unzip ffmpeg libgtk-3-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev qtbase5-dev yasm libblas-dev libopenblas-dev
sudo apt install -y mc
sudo apt install -y ncdu

print_msg "Installing translate-terminal"
sudo apt install -y npm
sudo npm install terminal-translate -g
# need to update npm
sudo npm install -g n
sudo n stable
# now it can work
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get install -y git-lfs
git lfs install


################ Utils for daily ################
print_msg "installing ssh and git"
sudo apt update
sudo apt install -y openssh-server openssh-client
sudo apt install -y git
sudo apt install -y curl
sudo apt install -y axel
sudo apt install -y wget
sudo add-apt-repository -y  ppa:hzwhuang/ss-qt5
sudo apt-get update
sudo apt-get install -y shadowsocks-qt5
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt update; sudo apt install -y oracle-java8-installer
sudo apt install -y libgfortran3
sudo apt-get install -y zlib1g-dev
sudo apt install -y curl
# if lack this, chrome will not able to open
sudo apt install -y libnss3
sudo apt install -y python3-tk
sudo apt install -y ffmpeg
sudo apt install -y exfat-utils
sudo apt install -y libnodejs-dev
sudo apt install -y npm
sudo apt install -y terminal-translate
cd ~
mkdir .pip
cd .pip
wget https://github.com/jinfagang/UbuntuScripts/raw/master/confs/pip.conf
cd ..
sudo chmod -R 777 .pip



###################### Some beautiful utils ###################
print_msg "For appearance"
sudo apt install -y unity-tweak-tool
sudo apt install -y plank
sudo apt-get install -y libcanberra-gtk-module  
sudo apt install -y libgtk2.0-dev
sudo apt-get install -y libglu1-mesa-dev freeglut3-dev mesa-common-dev
sudo add-apt-repository -y ppa:noobslab/icons
sudo add-apt-repository -y ppa:noobslab/icons
sudo add-apt-repository -y ppa:noobslab/themes
sudo add-apt-repository -y ppa:dyatlov-igor/sierra-theme
sudo add-apt-repository -y ppa:numix/ppa  
sudo add-apt-repository -y ppa:noobslab/icons  
sudo apt-get update
sudo apt-get install -y ultra-flat-icons-orange
sudo apt-get install -y ultra-flat-icons-green
sudo apt-get install -y ultra-flat-icons
sudo apt-get install -y arc-flatabulous-theme
sudo apt-get install -y ultra-flat-icons
sudo apt-get install -y google-chrome-stable
sudo apt install -y sierra-gtk-theme
sudo apt install -y unity-tweak-tool
sudo apt install -y python3-tk
sudo apt-get install -y numix-gtk-theme  
sudo apt-get install -y numix-icon-theme-circle  
sudo apt-get install -y ultra-flat-icons
sudo apt install -y unity-tweak-tool
sudo apt install -y  plank




############## For Python setup ###############
print_msg "setting up python3 library"
sudo apt update
sudo apt install -y python3-pip
sudo pip3 install --upgrade pip
sudo pip3 install scipy
sudo pip3 install matplotlib
sudo pip3 install pandas
sudo pip3 install keras
sudo pip3 install scikit-image
sudo pip3 install numpy
sudo pip2 install --upgrade pip
sudo pip2 install scipy
sudo pip2 install matplotlib
sudo pip2 install pandas
sudo pip2 install keras
sudo pip2 install scikit-image
sudo pip2 install numpy
sudo pip3 install alfred-py
sudo pip3 install cheat
sudo pip3 install cmake
sudo pip3 install matplotlib



################### For connecting ######################
print_msg "Connect to my network"
curl -s https://install.zerotier.com/ | sudo bash
sudo zerotier-cli join e5cd7a9e1ca15f26
sudo apt install -y curl
sudo apt install -y libcurl4-gnutls-dev
sudo apt install -y libcurl4-openssl-dev



###################### For softwares ####################
print_msg "Install some softwares"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
sudo add-apt-repository -y 'deb http://typora.io linux/'
sudo apt-get update
sudo apt-get install -y typora
sudo add-apt-repository -y ppa:peek-developers/stable
sudo apt update
sudo apt install -y peek



################## For speedup efficiency #####################
print_msg "Final terminal setup"
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

sudo apt install -y emacs
wget https://github.com/jinfagang/UbuntuScripts/raw/master/confs/init.el -O ~/.emacs.d/
wget https://github.com/jinfagang/UbuntuScripts/raw/master/confs/vimrc -O ~/.vimrc
wget https://github.com/jinfagang/UbuntuScripts/raw/master/confs/zsh/zshrc -O ~/.zshrc
wget https://github.com/jinfagang/UbuntuScripts/raw/master/ShellRepo/imgcat
sudo mv imgcat /usr/local/bin/
echo 'alias imgcat="bash /usr/local/bin/imgcat"' >> ~/.zshrc
sudo apt-add-repository  -y ppa:fish-shell/release-3
sudo apt update
sudo apt install -y fish
curl -L github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish



echo -e ${BGreen}"All Done! Congratulations! Enjoy your Ubuntu!"
echo -e "Please manually reboot your system now!"${BGreen}

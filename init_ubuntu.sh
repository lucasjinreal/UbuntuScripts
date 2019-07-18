#!/bin/bash
echo "=========installing Chinese input source=========="
sudo add-apt-repository -y ppa:fcitx-team/nightly  
sudo apt update
sudo apt install -y fcitx
sudo apt -f install
sudo apt install -y fcitx-config-gtk 
sudo apt install -y  im-switch
echo "=========installing googlepinyin input method=========="
sudo apt install -y fcitx-googlepinyin
sudo apt install -y curl
sudo apt-get install -y fonts-powerline

echo "========== !!!!!!!!!!!!!!!! Installing Deep Learning Depencies ======="
sudo apt install -y libatalas-base-dev
sudo apt install -y fonts-noto-color-emoji
sudo apt install -y ffmpeg
sudo apt install -y libgoogle-glog-dev
sudo apt install -y libatlas-dev libatlas-base-dev
sudo apt install -y libboost1.58-all-dev libhdf5-dev
sudo apt install -y autoconf
sudo apt install -y liblmdb-dev
sudo apt install -y python3-pip

sudo apt-get install --assume-yes build-essential cmake cmake-gui checkinstall git libgtk2.0-dev pkg-config python-dev libboost-all-dev  libdc1394-22 libdc1394-22-dev libjpeg-dev libpng12-dev libtiff5-dev libjasper-dev libavcodec-dev libavformat-dev libswscale-dev libxine2-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev libtbb-dev libqt4-dev libfaac-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utils unzip ffmpeg libgtk-3-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev qtbase5-dev yasm libblas-dev libopenblas-dev

echo "----- there tools you can not really miss them -------"
sudo apt install -y mc
sudo apt install -y ncdu

echo "++++++++ Installing translate-terminal ++++++++++++++"
sudo apt install -y npm
sudo npm install terminal-translate -g
# need to update npm
sudo npm install -g n
sudo n stable
# now it can work


curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get install -y git-lfs
git lfs install


echo "=========installing ssh and git=========="
sudo apt update
sudo apt install -y openssh-server openssh-client
sudo apt install -y git
sudo apt install -y curl
sudo apt install -y axel
sudo apt install -y wget

echo '============= installing sublime =============================='
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install -y sublime-text


echo "=========installing shadowsocks-qt5-Break Wall!=========="
sudo add-apt-repository -y  ppa:hzwhuang/ss-qt5
sudo apt-get update
sudo apt-get install -y shadowsocks-qt5

echo "=========installing tweak tools and plank dock=========="
sudo apt install -y unity-tweak-tool
sudo apt install -y plank

# change pip source to tsinghua / now is douban mirror
cd ~
mkdir .pip
cd .pip
wget https://github.com/jinfagang/UbuntuScripts/raw/master/confs/pip.conf
cd ..
sudo chmod -R 777 .pip
# install unity tweak tool
sudo apt install -y unity-tweak-tool
# set themes and tweak style like magic close window effect

# install plank
sudo apt install -y  plank

echo "--- install some pre-requirements"
sudo apt-get install -y libcanberra-gtk-module  
sudo apt install -y libgtk2.0-dev
# this for openGL when you need VTK and open contrib modules
sudo apt-get install -y libglu1-mesa-dev freeglut3-dev mesa-common-dev

echo "============== setup more beautiful icons ============"
sudo add-apt-repository -y ppa:noobslab/icons
sudo apt-get update
sudo apt-get install -y ultra-flat-icons

sudo add-apt-repository -y ppa:noobslab/icons
sudo apt-get update
sudo apt-get install -y ultra-flat-icons-orange

sudo apt-get update
sudo apt-get install -y ultra-flat-icons-green

sudo add-apt-repository -y ppa:noobslab/themes
sudo apt-get  update
sudo apt-get install -y arc-flatabulous-theme
sudo apt-get install -y ultra-flat-icons

sudo apt-get install -y google-chrome-stable
sudo add-apt-repository -y ppa:dyatlov-igor/sierra-theme
sudo apt update
sudo apt install -y sierra-gtk-theme
sudo apt install -y unity-tweak-tool
sudo apt install -y python3-tk




# install numix theme
sudo add-apt-repository -y ppa:numix/ppa  
sudo apt-get update 
sudo apt-get install -y numix-gtk-theme  
sudo apt-get install -y numix-icon-theme-circle  
sudo add-apt-repository -y ppa:noobslab/icons  
sudo apt-get update  
sudo apt-get install -y ultra-flat-icons

echo "=========setting up python3 library=========="
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

echo "============ install my python packages =========="
sudo pip3 install alfred-py
sudo pip3 install cheat

#echo "================ install text editors (vim, emacs, kate etc.)==================="
#cd ~/Downloads
#wget http://mirrors.ustc.edu.cn/kde/unstable/kate/Kate-16.08-x86_64.AppImage
#sudo chmod -R 777 Kate-16.08-x86_64.AppImage
#sudo mv Kate-16.08-x86_64.AppImage /usr/bin/kate
#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim



echo "============ installing Oracle Java8 =================="
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt update; sudo apt install -y oracle-java8-installer

echo "=========== install typora ============="
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
sudo add-apt-repository -y 'deb http://typora.io linux/'
sudo apt-get update
sudo apt-get install -y typora


echo "======== install enssential libs ========="
sudo apt install -y libgfortran3
sudo apt-get install -y zlib1g-dev
sudo apt install -y curl
# if lack this, chrome will not able to open
sudo apt install -y libnss3
sudo apt install -y python3-tk
sudo pip3 install matplotlib
sudo apt install -y ffmpeg
sudo apt install -y exfat-utils

sudo apt install -y libnodejs-dev
sudo apt install -y npm
sudo apt install -y terminal-translate

echo "================ install zerotier and join my networks ============"
curl -s https://install.zerotier.com/ | sudo bash
sudo zerotier-cli join e5cd7a9e1ca15f26

echo "============ update cmake to a high level 3.9 ========="
wget https://cmake.org/files/v3.12/cmake-3.12.0.tar.gz
tar -xvf cmake-3.12.0.tar.gz
cd cmake-3.12.0
sudo apt install -y curl
sudo apt install -y libcurl4-gnutls-dev
sudo apt install -y libcurl4-openssl-dev
./bootstrap --system-curl
make -j8
sudo make install


echo "======== install sublime text3 =================="
sudo add-apt-repository -y ppa:wereturtle/ppa
sudo apt-get update
sudo apt-get install -y ghostwriter

sudo add-apt-repository -y ppa:peek-developers/stable
sudo apt update
sudo apt install -y peek

echo "=========installing zsh-a beautiful terminal=========="
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


echo "================ install emacs and setup for it===================="
sudo apt install -y emacs
wget https://github.com/jinfagang/UbuntuScripts/raw/master/confs/init.el -O ~/.emacs.d/
wget https://github.com/jinfagang/UbuntuScripts/raw/master/confs/vimrc -O ~/.vimrc




echo "=========install imgcat================="
wget https://github.com/jinfagang/UbuntuScripts/raw/master/ShellRepo/imgcat
sudo mv imgcat /usr/local/bin/
echo 'alias imgcat="bash /usr/local/bin/imgcat"' >> ~/.zshrc

# add autojump to zshrc
echo 'plugins=(git autojump)' >> ~/.zshrc

source ~/.zshrc

cd ~
wget https://github.com/anmoljagetia/Flatabulous/releases/download/16.04.1/Flatabulous-Theme.deb
sudo dpkg -i Flatabulous-Theme.deb


echo "================ install z, your know z??? ===================="
wget https://github.com/rupa/z/raw/master/z.sh ~/
echo ". ~/z.sh" >> ~/.zshrc
source ~/.zshrc
echo "OK! Your z setup finished."


echo "All Done! Congratulations! Enjoy your Ubuntu!"
echo "Please manually reboot your system now!"

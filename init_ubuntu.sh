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


echo "++++++++ Installing translate-terminal ++++++++++++++"
sudo apt install -y npm
sudo npm install terminal-translate -g


echo "=========installing google-chrome-stable=========="
# some times this line con not get
sudo wget https://repo.fdzh.org/chrome/google-chrome.list -P /etc/apt/sources.list.d/
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
sudo apt update
sudo apt install -y google-chrome-stable

echo "=========installing ssh and git=========="
sudo apt update
sudo apt install -y openssh-server
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


## nemo file explorer
sudo add-apt-repository -y ppa:webupd8team/nemo
sudo apt-get update
sudo apt-get install -y  nemo nemo-fileroller
gsettings set org.gnome.desktop.background show-desktop-icons false
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search

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


echo "================ install text editors (vim, emacs, kate etc.)==================="
cd ~/Downloads
wget http://mirrors.ustc.edu.cn/kde/unstable/kate/Kate-16.08-x86_64.AppImage
sudo chmod -R 777 Kate-16.08-x86_64.AppImage
sudo mv Kate-16.08-x86_64.AppImage /usr/bin/kate
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim



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

echo "============ update cmake to a high level 3.9 ========="
# wget https://cmake.org/files/v3.9/cmake-3.9.0.tar.gz
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
 sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
 sudo apt update
 sudo apt-get install -y sublime-text-installer

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

echo "================ install zerotier and join my networks ============"
curl -s https://install.zerotier.com/ | sudo bash
sudo zerotier-cli join e5cd7a9e1ca15f26


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

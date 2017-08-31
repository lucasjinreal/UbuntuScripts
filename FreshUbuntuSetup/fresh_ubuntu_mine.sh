# !/bin/bash
# this script for ubuntu16.04 for now

# change pip source to tsinghua mirror
cd ~
mkdir .pip
cd .pip
# install unity tweak tool
sudo apt install unity-tweak-tool
# set themes and tweak style like magic close window effect

# install plank
sudo apt install plank

# install sublime
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update 
sudo apt-get install sublime-text-installer

## nemo file explorer
sudo add-apt-repository ppa:webupd8team/nemo
sudo apt-get update
sudo apt-get install nemo nemo-fileroller
gsettings set org.gnome.desktop.background show-desktop-icons false
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search

# install numix theme
sudo add-apt-repository ppa:numix/ppa  
sudo apt-get update 
sudo apt-get install numix-gtk-theme  
sudo apt-get install numix-icon-theme-circle  
sudo add-apt-repository ppa:noobslab/icons  
sudo apt-get update  
sudo apt-get install ultra-flat-icons 

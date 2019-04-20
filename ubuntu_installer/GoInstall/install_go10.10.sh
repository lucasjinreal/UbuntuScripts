#!/bin/sh
cd ~
wget -q https://storage.googleapis.com/golang/getgo/installer_linux
sudo chmod -R 777 installer_linux
./installer_linux

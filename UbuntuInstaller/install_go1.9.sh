#!/bin/bash

sudo add-apt-repository -y ppa:longsleep/golang-backports
sudo apt-get update
sudo apt-get install -y golang-go


go get gitlab.com/jinfagang/colorgo
git clone https://github.com/golang/net.git $HOME/go/src/golang.org/x/net

GOVERSION=`go version`
echo ${GOVERSION}' fucking install success!'

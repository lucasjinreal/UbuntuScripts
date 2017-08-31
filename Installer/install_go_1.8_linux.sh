#!/bin/bash
# Above line must be add or it can not using source command


wget https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz
# extract to /usr/local
sudo tar -C /usr/local -xvzf go1.8.3.linux-amd64.tar.gz
rm go1.8.3.linux-amd64.tar.gz
echo === Adding go path to global enviroment...
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.zshrc
echo 'export GOPATH=$HOME/go' >> ~/.profile
echo 'export GOPATH=$HOME/go' >> ~/.zshrc


echo '=== Now Source the profile'

source ~/.profile
source ~/.zshrc
echo `go version`
echo === Try installing my personal favorite go library.
echo === install colorgo
go get gitlab.com/jinfagang/colorgo.git

echo Succeed installed golang 1.8.3.

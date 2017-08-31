#!/bin/bash

sudo add-apt-repository -y ppa:longsleep/golang-backports
sudo apt-get update
sudo apt-get install -y golang-go

echo `go version`
echo 'golang1.8.3 fucking install success!'

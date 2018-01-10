# !/usr/bin/sh

cd ~
git clone https://github.com/google/protobuf
sudo apt install -y autoconf automake libtool curl unzip
cd protobuf
./autogen.sh
./configure
make -j32
make check
sudo make install

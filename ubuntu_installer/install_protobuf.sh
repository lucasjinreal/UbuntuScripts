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
sudo ldconfig
pkg-config --modversion protobuf

# have to manually set protoc version
# otherwise it will always generate the newest version
# sudo mv /usr/local/bin/protoc /usr/local/bin/protoc3.51

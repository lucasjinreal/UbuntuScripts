#!/bin/bash

# before install, must install opencv3.2 which is now the latest version.
# and the cudnn
cd ~
git clone https://github.com/BVLC/caffe.git --recursive
sudo apt-get install -y libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libboost-all-dev libhdf5-serial-dev libgflags-dev libgoogle-glog-dev liblmdb-dev protobuf-compiler libopenblas-dev libatlas-base-dev liboost-all-dev
cd caffe

wget https://github.com/jinfagang/UbuntuScripts/raw/master/UbuntuInstaller/CaffeInstall/Makefile.config.right  -O Makefile.config

cd /usr/lib/x86_64-linux-gnu
sudo ln -s libhdf5_serial.so.8.0.2 libhdf5.so
sudo ln -s libhdf5_serial_hl.so.8.0.2 libhdf5_hl.so
cd ~/caffe

make all -j8

sudo apt-get install -y python-pip python-dev build-essential
sudo pip3 install --upgrade pip
sudo pip3 install -r python/requirements.txt
sudo pip2 install -r python/requirements.txt

cd ~/caffe
sudo make pycaffe

echo '-------------- now set for python path ---------------'
sudo touch /usr/lib/python3/dist-packages/caffe.pth
sudo echo '~/caffe/python' > /usr/lib/python3/dist-packages/caffe.pth

echo 'now you can import caffe from python terminal'


./data/mnist/get_mnist.sh
./examples/mnist/create_mnist.sh
./examples/mnist/train_lenet.sh
echo "Congratulations! Enjoy caffe!"


# sometimes error says cannot find ...so.1.0 like this, you should
# copy all library under /usr/local/cuda/lib64 to /usr/lib/

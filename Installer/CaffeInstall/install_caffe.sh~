#!/bin/bash

# before install, must install opencv3.2 which is now the latest version.
# and the cudnn
cd ~
git clone https://github.com/BVLC/caffe.git
sudo apt-get install libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libboost-all-dev libhdf5-serial-dev libgflags-dev libgoogle-glog-dev liblmdb-dev protobuf-compiler libopenblas-dev libatlas-base-dev
cd caffe
cp Makefile.config.example Makefile.config
sed -i '{/USE_CUDNN/s/^# //g;/USE_CUDNN/s/0$/1/g}' Makefile.config

# we not using opencv, disable this line
#sed -i '{/USE_OPENCV/s/^# //g;/USE_OPENCV/s/0$/1/g}' Makefile.config
sed -i '/OPENCV_VERSION/s/^# //g' Makefile.config

sed -i '/PYTHON_LIBRARIES/s/^# //g' Makefile.config
sed -i '/PYTHON_INCLUDE/s/^# //g' Makefile.config
sed -i '/WITH_PYTHON_LAYER/s/0$/1/g' Makefile.config


sed -i '{/USE_CUDNN/s/^# //g;/USE_CUDNN/s/0$/1/g}' Makefile.config
sed -i '{/USE_CUDNN/s/^# //g;/USE_CUDNN/s/0$/1/g}' Makefile.config


sed -i '/INCLUDE_DIRS += $(BUILD_INCLUDE_DIR)/s/$/ \/usr\/include\/hdf5\/serial/g' Makefile
sed -i '/LIBRARIES += glog gflags protobuf boost_system/s/hdf5/hdf5_serial/g' Makefile

# you can use make to build or cmake
# make all -j8
# we are using cmake
mkdir build
cd build
cmake ..
make all -j8
sudo make install
sudo make runtest

sudo apt-get install python-pip python-dev build-essential
sudo pip3 install --upgrade pip
sudo pip3 install -r python/requirements.txt
sudo pip2 install -r python/requirements.txt

cd ~/caffe
sudo make pycaffe
./data/mnist/get_mnist.sh
./examples/mnist/create_mnist.sh
./examples/mnist/train_lenet.sh
echo "Congratulations! Enjoy caffe!"


# sometimes error says cannot find ...so.1.0 like this, you should
# copy all library under /usr/local/cuda/lib64 to /usr/lib/

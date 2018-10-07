#!/bin/bash
sudo apt-get install --assume-yes build-essential cmake cmake-gui checkinstall git libgtk2.0-dev pkg-config python-dev libboost-all-dev  libdc1394-22 libdc1394-22-dev libjpeg-dev libpng12-dev libtiff5-dev libjasper-dev libavcodec-dev libavformat-dev libswscale-dev libxine2-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev libtbb-dev libqt4-dev libfaac-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utils unzip ffmpeg libgtk-3-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev qtbase5-dev yasm
cd ~
git clone git://github.com/opencv/opencv.git
cd opencv
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D INSTALL_PYTHON_EXAMPLES=ON -D PYTHON_EXECUTABLE=/usr/bin/python3 -D WITH_CUDA=OFF -D BUILD_SHARED_LIBS=OFF -D BUILD_EXAMPLES=ON  ..
make -j8
make check -j8
sudo make install
sudo ldconfig

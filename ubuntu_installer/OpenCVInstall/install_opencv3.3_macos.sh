cd ~
git clone git://github.com/opencv/opencv.git
cd opencv
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D INSTALL_PYTHON_EXAMPLES=ON -D PYTHON_EXECUTABLE=/usr/bin/python3 -D WITH_CUDA=OFF -D BUILD_SHARED_LIBS=OFF -D BUILD_EXAMPLES=ON  ..
make -j8
sudo make install
sudo ldconfig
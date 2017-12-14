cd ~
wget https://codeload.github.com/opencv/opencv/zip/2.4.13.2
unzip opencv-2.4.13.2.zip
cd opencv-2.4.13.2
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D INSTALL_PYTHON_EXAMPLES=ON -D PYTHON_EXECUTABLE=/usr/bin/python3 -D WITH_CUDA=OFF -D BUILD_EXAMPLES=ON  ..
make -j8
sudo make install
sudo ldconfig

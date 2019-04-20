cd ~
wget https://bitbucket.org/eigen/eigen/get/3.3.7.tar.bz2 -O eigen.tar.bz2
tar -xvf eigen.tar.bz2
rm eigen.tar.bz2
cd eigen-eigen-323c052e1731
mkdir build
cd build
cmake ..
make all -j8
sudo make install
echo "# you are just installed eigen3!"

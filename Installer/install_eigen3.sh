cd ~
git clone https://bitbucket.org/eigen/eigen
cd eigen
mkdir build
cd build
cmake ..
make all -j8
sudo make install
echo "# you are just installed eigen3!"

cd ~
git clone https://github.com/RLovelett/eigen.git
cd eigen
mkdir build
cd build
cmake ..
make all -j8
sudo make install
echo "# you are just installed eigen3!"

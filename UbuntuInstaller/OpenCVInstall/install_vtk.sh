cd ~
git clone https://gitlab.kitware.com/vtk/vtk.git
cd vtk
mkdir build
cd build
cmake ..
make all -j8
sudo make install
echo "> # you are just installed vtk"

cd ~
wget https://vtk.org/files/release/8.2/VTK-8.2.0.tar.gz
tar -xvf VTK-8.2.0.tar.gz
cd VTK-8.2.0
mkdir build
cd build
cmake ..
make -j8
sudo make install
rm -r VTK-8.2.0

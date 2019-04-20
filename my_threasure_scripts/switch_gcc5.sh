 sudo rm /usr/bin/gcc
 sudo ln -s /usr/bin/gcc-5 /usr/bin/gcc

 sudo rm /usr/bin/g++
 sudo ln -s /usr/bin/g++-5 /usr/bin/g++

 sudo ldconfig

 g++ --version
 gcc --version

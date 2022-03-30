 sudo rm /usr/bin/gcc
 sudo ln -s /usr/bin/gcc-8 /usr/bin/gcc

 sudo rm /usr/bin/g++
 sudo ln -s /usr/bin/g++-8 /usr/bin/g++

 sudo ldconfig

 g++ --version
 gcc --version

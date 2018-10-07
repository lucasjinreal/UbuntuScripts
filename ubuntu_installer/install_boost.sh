cd ~/Downloads
sudo rm -r boost
git clone --recursive https://github.com/boostorg/boost.git
cd boost
git checkout develop # or whatever branch you want to use
./bootstrap.sh --with-libraries=python
./b2 headers
./b2

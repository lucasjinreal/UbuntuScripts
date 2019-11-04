## this scripts using for switch Ubuntu default python3.5 to python3.6
## if you using Uuntu 18.04 or above then this can be ignore.


# install python3.6
sudo add-apt-repository ppa:jonathonf/python-3.6
sudo apt update
sudo apt-get install python3.6

# switch to 3.6 default
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.5 1
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 2



# solve gnome can not open issue
sudo cp _gi.cpython-35m-x86_64-linux-gnu.so _gi.cpython-36m-x86_64-linux-gnu.so
sudo cp _gi_cairo.cpython-35m-x86_64-linux-gnu.so _gi_cairo.cpython-36m-x86_64-linux-gnu.so

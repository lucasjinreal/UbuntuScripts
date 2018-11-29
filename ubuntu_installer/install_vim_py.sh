sudo apt install -y python-dev python3-dev libperl-dev
sudo apt-get remove --purge vim vim-runtime vim-gnome vim-tiny vim-gui-common
sudo apt-get install checkinstall
sudo rm -rf /usr/local/share/vim /usr/bin/vim
cd /tmp && git clone https://github.com/vim/vim
cd vim/src
make distclean
cd ..
./configure --enable-multibyte \
	--enable-perlinterp=dynamic \
	--enable-pythoninterp=dynamic \
	--with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
	--enable-cscope \
	--enable-gui=auto \
	--with-features=huge --with-x --enable-fontset --enable-largefile --disable-netbeans\
	--with-compiledby="Lucas Jin" --enable-fail-if-missing \
	--enable-python3interp=yes \
        --with-python3-config-dir=/usr/lib/python3.6/config-3.6m-x86_64-linux-gnu
make
sudo make install
sudo ln -s /usr/local/bin/vim /usr/bin/vim

log() {
    echo "$(date +'%Y-%m-%dT%H:%M:%S%z') INFO $0 | $@"
}
err() {
    echo "$(date +'%Y-%m-%dT%H:%M:%S%z') ERROR $0 | $@" >&2
}

log "Start to install YouCompleteMe"
cd ~/.vim/bundle/
rm -rf YouCompleteMe
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
./install.py --clang-completer
log "Success to install YouCompleteMe"
exit 0

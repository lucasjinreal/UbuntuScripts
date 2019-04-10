curl -s 'https://raw.githubusercontent.com/zerotier/download.zerotier.com/master/htdocs/contact%40zerotier.com.gpg' | gpg --import && \\nif z=$(curl -s 'https://install.zerotier.com/' | gpg); then echo "$z" | sudo bash; fi
sudo zerotier-cli join e5cd7a9e1ca15f26
sudo zerotier-cli info

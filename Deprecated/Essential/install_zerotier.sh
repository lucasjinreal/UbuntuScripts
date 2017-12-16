curl -s 'https://pgp.mit.edu/pks/lookup?op=get&search=0x1657198823E52A61' | gpg --import && \
    if z=$(curl -s 'https://install.zerotier.com/' | gpg); then echo "$z" | sudo bash; fi
curl -s https://install.zerotier.com/ | sudo bash
sudo zerotier-cli status|echo
echo 'zerotier installed.'
sudo zerotier-cli join e5cd7a9e1ca15f26

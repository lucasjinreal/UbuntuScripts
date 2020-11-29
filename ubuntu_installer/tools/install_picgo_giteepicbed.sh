sudo apt install npm
npm config set registry https://registry.npm.taobao.org
sudo npm install -g cnpm --registry=https://registry.npm.taobao.org
sudo cnpm install -g picgo
picgo install gitee-uploader

echo 'now got to ~/.config/picgo/data.json config gitee token and repo name'

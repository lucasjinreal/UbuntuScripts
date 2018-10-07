sudo apt install mysql-server
echo "Now changing the charset in mysql"
sudo wget https://github.com/jinfagang/UbuntuScripts/raw/master/confs/mysqld.cnf  /etc/mysql/mysql.conf.d/mysqld.cnf

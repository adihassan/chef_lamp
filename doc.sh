#!/bin/bash
#doc root setup
rm -rf /var/www/html
ln -s /vagrant /var/www/html
sudo yum install -y wget
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/adihassan/lamp-vagrant/master/index.html
#!/bin/bash

apt-get update
apt-get install nginx git nodejs npm -fy

#systemctl status nginx.service

cd /var/www/

git clone https://github.com/csantos820/demosite
cd demosite

npm i
npm i forever -g
forever start app.js

cd /var/www/html/
wget https://raw.githubusercontent.com/csantos820/demosite/master/plain-html/index.html


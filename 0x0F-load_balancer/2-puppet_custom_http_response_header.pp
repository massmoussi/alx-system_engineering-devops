#!/usr/bin/env bash
# Install Nginx Server, Conf Index page, add a custome Header
apt-get -y update 
apt-get -y install nginx
echo "Hello World!" > /var/www/html/index.nginx-debian.html
sed -i "s/include \/etc\/nginx\/sites-enabled\/\*;/&\n\tadd_header X-Served-By \"$HOSTNAME\";/" /etc/nginx/nginx.conf
service nginx start

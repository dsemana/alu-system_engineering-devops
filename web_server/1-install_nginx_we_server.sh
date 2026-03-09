#!/bin/bash
# 1-install_nginx_web_server
# Installs nginx and sets default page to "Holberton School for the win!"

apt-get update -y
apt-get install nginx -y

# Create index.html
echo "Holberton School for the win!" > /var/www/html/index.html

# Restart nginx without systemctl
service nginx restart
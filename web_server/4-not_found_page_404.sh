#!/bin/bash
# 4-not_found_page_404
# Configures nginx to serve a custom 404 page containing the required string

apt-get update -y
apt-get install nginx -y

# Create custom 404 page
echo "Ceci n'est pas une page" > /var/www/html/404.html

NGINX_CONF="/etc/nginx/sites-available/default"

# Update nginx config
sed -i '/server_name _;/a \
    error_page 404 /404.html; \
    location = /404.html { \
        internal; \
    }' "$NGINX_CONF"

# Restart nginx
service nginx restart
#!/bin/bash
# 3-redirection
# Configures nginx to redirect /redirect_me to another URL

apt-get update -y
apt-get install nginx -y

NGINX_CONF="/etc/nginx/sites-available/default"

# Insert redirect for /redirect_me
sed -i '/server_name _;/a \
    location /redirect_me/ { \
        return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4; \
    }' "$NGINX_CONF"

# Restart nginx
service nginx restart
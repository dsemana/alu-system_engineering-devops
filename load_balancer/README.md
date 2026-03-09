# Load Balancer

## Description

This directory contains scripts to install and configure a load balancer on a new Ubuntu machine to distribute traffic to web servers using roundrobin.

## Scripts

- `0-custom_http_response_header.sh`: Installs and configures Nginx with a custom X-Served-By HTTP response header.
- `1-install_load_balancer.sh`: Installs and configures HAProxy for round-robin load balancing between web servers.

## Usage

1. **Install and configure Nginx with custom header**

   ```bash
   chmod +x 0-custom_http_response_header.sh
   ./0-custom_http_response_header.sh
   ```

2. **Install and configure HAProxy**

   ```bash
   chmod +x 1-install_load_balancer.sh
   ./1-install_load_balancer.sh
   ```

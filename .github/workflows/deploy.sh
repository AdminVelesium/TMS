#!/bin/bash

# Ensure app directory exists
mkdir -p /var/www/tms

# Copy new build files
cp -r ~/app/dist/* /var/www/tms/

# Optional: restart Nginx or similar
# sudo systemctl restart nginx

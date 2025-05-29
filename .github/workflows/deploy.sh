#!/bin/bash

set -e  # Exit on any error

# Log start time
echo "Deploy script started at $(date)"

# Ensure the target directory exists
sudo mkdir -p /var/www/tms

# Clear old build files (optional, but avoids stale files)
sudo rm -rf /var/www/tms/*

# Copy new build files
sudo cp -r ~/app/* /var/www/tms/

# Set correct permissions
sudo chown -R www-data:www-data /var/www/tms
sudo chmod -R 755 /var/www/tms

# Optional: restart Nginx if you’re serving via Nginx
# sudo systemctl restart nginx

echo "Deploy script completed at $(date)"


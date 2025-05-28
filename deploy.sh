#!/bin/bash

# Clean old build
sudo rm -rf /var/www/tms/*

# Copy new build
sudo cp -r dist/* /var/www/tms/

# Set permissions
sudo chown -R www-data:www-data /var/www/tms

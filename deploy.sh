#!/bin/bash

# Fail if any command fails
set -e

# Define source and destination
SOURCE_DIR=dist
DEST_DIR=/var/www/html

echo "Cleaning previous build from $DEST_DIR"
sudo rm -rf $DEST_DIR/*

echo "Copying new build to $DEST_DIR"
sudo cp -r $SOURCE_DIR/* $DEST_DIR/

echo "Restarting nginx"
sudo systemctl restart nginx

echo "Deployment complete. App should be live!"

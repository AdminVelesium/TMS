#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "🔄 Starting deployment..."

# Define paths
APP_SRC="/home/ubuntu/app"
DEPLOY_DIR="/var/www/html"

# Remove existing files in deployment dir
echo "🧹 Cleaning old files from $DEPLOY_DIR..."
sudo rm -rf $DEPLOY_DIR/*

# Copy new build
echo "📦 Copying new build files from $APP_SRC to $DEPLOY_DIR..."
sudo cp -r $APP_SRC/* $DEPLOY_DIR/

# Set correct permissions
echo "🔐 Setting permissions..."
sudo chown -R www-data:www-data $DEPLOY_DIR

# Restart NGINX
echo "🚀 Restarting NGINX..."
sudo systemctl restart nginx

echo "✅ Deployment complete!"

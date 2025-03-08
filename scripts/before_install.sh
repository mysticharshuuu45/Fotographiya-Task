#!/bin/bash
echo "Stopping any existing application..."
sudo pkill -f app.py || true

echo "Updating the package list..."
sudo apt update -y

echo "Installing dependencies..."
sudo apt install -y python3-pip awscli

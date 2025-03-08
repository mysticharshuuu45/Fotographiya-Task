#!/bin/bash
cd /home/ubuntu/fotographiya-app

echo "Starting the application..."
nohup python3 app.py > app.log 2>&1 &

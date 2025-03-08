#!/bin/bash
if pgrep -f "python3 app.py"; then
    echo "Application is running."
    exit 0
else
    echo "Application is NOT running!"
    exit 1
fi

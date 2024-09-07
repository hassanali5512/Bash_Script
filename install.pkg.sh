#!/bin/bash

# Check if pkg-name is installed
if dpkg -l | grep -qw pkg-name; then
    echo "pkg-name is already installed"
    echo "Attempting to restart pkg-name..."
    sudo systemctl restart pkg-name
else
    echo "pkg-name is not installed. Installing pkg-name..."
    sudo apt update
    sudo apt install pkg-name -y
    sudo systemctl start pkg-name
    sudo systemctl enable pkg-name
fi

# Check the status of pkg-name
echo "Checking the status of pkg-name..."
sudo systemctl status pkg-name --no-pager

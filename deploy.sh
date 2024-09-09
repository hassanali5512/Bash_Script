#!/bin/bash

echo "## Welcome to deployment ##"
if dpkg -l | grep -qw nginx; then
     echo "Nginx is already installed"
else
     echo "Nginx is not installed.Installing nginx..."
     sudo apt install nginx -y
     systemctl start nginx
fi
systemctl status nginx --no-pager

if [ ! -d "/home/hassan/demo1/" ]; then 
    sudo mkdir /demo1/
 else
     echo "demo1 is already created"
fi

if [ ! -d "/home/hassan/demo1/hassan/" ]; then
    cd /home/hassan/demo1/	
    echo "Cloning the repository..."
    git clone https://github.com/hassanali5512/hassan.git
    cd hassan/
else
    echo "Repository already cloned. Pulling the latest changes..."
    cd /home/hassan/demo1/hassan/
    git pull origin main
fi
echo "Moving file into default directory..."
sudo cp * /var/www/html/
echo "## End ##"

#!/bin/bash/
echo "Welcome to my deployment"
if dpkg -l | grep -qw nginx; then
     echo "Nginx is already installed"
else
     echo "Nginx is not installed.Installing nginx..."
     sudo apt install nginx -y
     sudo systemctl start nginx
fi
systemctl status nginx --no-pager

if [ ! -d "/home/ubuntu/demo1/Hassan/" ]; then
        cd /home/ubuntu/demo1/
        git clone https://github.com/hassanali5512/Hassan.git
        cd Hassan/

else
        cd /home/ubuntu/demo1/Hassan/
        git pull origin main
fi
  sudo cp * /var/www/html/
  echo "End"

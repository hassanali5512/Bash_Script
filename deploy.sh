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

if [ ! -d "/home/ubuntu/deploy-bash/Bash_Script/" ]; then
        cd /home/ubuntu/deploy-bash/
        git clone https://github.com/hassanali5512/Bash_Script.git
        cd Bash_Script/

else
        cd /home/ubuntu/deploy-bash/Bash_Script/
        git pull origin main
fi
  sudo cp * /var/www/html/
  echo "End"

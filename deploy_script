#!/bin/bash/
echo "Welcome to my deployment"
if [ ! -d "/home/ubuntu/demo1/Hassan" ]; then
        cd /home/ubuntu/demo1/
        git clone https://github.com/hassanali5512/Hassan.git
        cd Hassan

else
        cd /home/ubuntu/demo1/Hassan
        git pull
fi
  sudo cp * /var/www/html/
  echo "End"

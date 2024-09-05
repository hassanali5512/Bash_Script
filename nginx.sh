#!
echo "Nginx installation setup"
sudo apt install nginx -y
systemctl start nginx 
systemctl status nginx
echo "End"

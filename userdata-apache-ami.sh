#!/bin/bash
sudo yum update
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo echo "Welcome to Instance $(hostname -f)" >> /var/www/html/index.html
sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo systemctl restart sshd

# use this to configure apache on ubuntu
# #! /bin/bash
# sudo apt-get update
# sudo apt-get install -y apache2
# sudo systemctl start apache2
# sudo systemctl enable apache2
# echo "The page was created by the user data" | sudo tee /var/www/html/index.html
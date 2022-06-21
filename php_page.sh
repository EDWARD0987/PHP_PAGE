#!/bin/bash
sudo yum install httpd -y
sudo yum install php -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo usermod -a -G apache ec2-user
sudo chown -R ec2-user:apache /var/www/
echo "<?php phpinfo(); ?>" > /var/www/html/phpinfo.php

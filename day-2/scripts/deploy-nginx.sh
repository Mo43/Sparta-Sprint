#!/bin/bash
# This script deploys an Nginx server using Docker.

# update packages
sudo apt update -y

#upgrade packages
sudo apt upgrade -y

#get and install nginx
sudo apt install nginx -y

#restart nginx service
sudo systemctl restart nginx

#enable nginx - make it a startup process for the os
sudo systemctl enable nginx



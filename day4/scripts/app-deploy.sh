#!/bin/bash

# update packages

sudo apt update -y

sudo apt upgrade -y

# clone repo with app code

git clone https://github.com/LSF970/nodejs2-sparta-test-app-2025

# install + run nginx

sudo apt install nginx -y

# install sed if not already present

sudo apt install sed -y

# sed command to replace a required line

sudo sed -i '51c\proxy_pass http://127.0.0.1:3000;' /etc/nginx/sites-available/default

# restart nginx

sudo systemctl restart nginx

# enable nginx

sudo systemctl enable nginx

# get the required version of node (20.x)

sudo bash -c "curl -fsSL https://deb.nodesource.com/setup_20.x | bash -"

# install nodejs20

sudo apt-get install -y nodejs

# go into repo dir

cd nodejs2-sparta-test-app-2025

# go into app

cd app

# set up app (install dependencies)

sudo npm install

# install pm2 - process mamager for nodejs apps

sudo npm install pm2 -g

# kill any running processes

pm2 kill

# run the app with pm2

# alternative to 'npm start app.js'

pm2 start app.js
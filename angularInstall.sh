#!/bin/bash
echo "building angular project"
ng build
project=$(ls dist)
echo "makin sure nginx is installed"
sudo apt install -y nginx
echo "configuring nginx"
sed "s|{{WEB_ROOT}}|$(pwd)/dist/${project{|g" nginx.conf | sudo tee /etc/nginx/nginx.conf
sudo nginx -s relo
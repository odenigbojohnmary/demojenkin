#!/bin/bash
# A simple copy script

sudo docker ps -aq
sudo docker stop $(docker ps -aq)
sudo docker rm $(docker ps -aq)

cd /var/www/html/wayapay
sudo docker build --tag bulletinboard:1.0 .
sudo docker run --publish 8000:8080 --detach --name bb bulletinboard:1.0

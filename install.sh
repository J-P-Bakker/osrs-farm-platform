#!/bin/bash

# Install docker-ce
apt update -y 
apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt update -y
apt install -y docker-ce

# Install docker-compose
apt install -y docker-compose

#### dependencies
# Install ubuntu dependencies
apt install -y python3-pip libpq-dev

#Install python dependencies
pip3 install psycopg2 requests-html python-anticaptcha requests requests[socks]
#!/bin/bash

echo "installing dependencies..."
sudo apt-get update 
sudo apt-get install -qq -y python-pip libpython-dev
sudo curl -O https://bootstrap.pypa.io/get-pip.py && sudo python get-pip.py
sudo pip install -q awscli==1.11.115 --upgrade # lock version

# jq json parser
sudo apt-get install jq

# ecs-cli
sudo curl -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest
sudo chmod +x /usr/local/bin/ecs-cli

# global npm
sudo npm install -g merge-yaml-cli
sudo npm install -g aws-sdk
sudo npm install -g babel-cli
sudo npm install -g api-console-cli

# update docker cash
# docker pull node:8.9

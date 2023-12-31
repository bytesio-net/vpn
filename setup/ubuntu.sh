#!/bin/sh

sudo apt-get update && sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common


# install docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88 | grep docker@docker.com || exit 1
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get install -y docker-ce
# install docker-compose
sudo apt install -y docker-compose 

sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl restart docker

# install git
sudo apt install git

echo "Please relogin!!!!"
exit
!/bin/sh

sudo yum upgrade && sudo yum update
sudo yum install -y docker git python3-pip
sudo pip3 install docker-compose

sudo systemctl enable docker.service
sudo systemctl start docker.service

# docker-compose
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

sudo usermod -a -G docker $USER
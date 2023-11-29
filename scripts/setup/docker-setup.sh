#!bin/bash

echo "Starting docker setup"

# add docker user group
sudo groupadd docker
sudo usermod -aG docker $USER

newgrp docker

# enable and start service
sudo systemctl enable docker.service
sudo systemctl start docker.service
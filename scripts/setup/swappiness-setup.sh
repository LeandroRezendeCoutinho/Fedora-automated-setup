#!bin/bash

echo 'Configuring swappiness'

sudo sysctl vm.swappiness=1

sudo echo "vm.swappiness=1" | sudo tee -a /etc/sysctl.d/99-swappiness.conf
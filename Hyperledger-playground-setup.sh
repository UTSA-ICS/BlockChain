#!/usr/bin/env bash

#
# This script has 3 parts. 
#

# Part 1
curl -O https://hyperledger.github.io/composer/latest/prereqs-ubuntu.sh
chmod u+x prereqs-ubuntu.sh
sudo ./prereqs-ubuntu.sh
exit

# Part 2
sudo chown -R $USER:$(id -gn $USER) /home/ubuntu/.config
sudo chown -R ubuntu:ubuntu ~/.nvm
npm install -g composer-cli@0.20
npm install -g composer-rest-server@0.20
npm install -g generator-hyperledger-composer@0.20
npm install -g yo
npm install -g composer-playground@0.20

mkdir ~/fabric-dev-servers && cd ~/fabric-dev-servers
curl --url https://raw.githubusercontent.com/hyperledger/composer-tools/master/packages/fabric-dev-servers/fabric-dev-servers.tar.gz --output ~/fabric-dev-servers/fabric-dev-servers.tar.gz
tar -xvzf ~/fabric-dev-servers/fabric-dev-servers.tar.gz -C ~/fabric-dev-servers
sudo usermod -aG docker $USER
exit

# Part 3
./fabric-dev-servers/downloadFabric.sh

# Result:
#+++++++++++++++++++
# VERSIONS:
# Node:           v8.11.3
# npm:            6.3.0
# Docker:         Docker version 18.06.0-ce, build 0ffa825
# Docker Compose: docker-compose version 1.13.0, build 1719ceb
# Python:         Python 2.7.12
#+++++++++++++++++++
# Proceed to Post-setup.txt

#!/bin/bash

# INSTALL PARITY AND REQUIRED DEPENDENCIES
sudo apt-get install build-essential openssl libssl-dev libudev-dev
bash <(curl https://get.parity.io -L)

#CREATE CONFIG FOR NODE
sudo mv -v config.toml ./$1.toml
echo $1 >> ./node.pwds
sudo echo -n "[account]" >> ./$1.toml
sudo echo -n 'password = ["node.pwds"]' >> ./$1.toml



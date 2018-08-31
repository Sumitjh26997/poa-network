#!/bin/bash

# INSTALL PARITY AND REQUIRED DEPENDENCIES
sudo apt-get install build-essential openssl libssl-dev libudev-dev
bash <(curl https://get.parity.io -L)

# FOLDER FOR CHAIN SPEC AND NODE CONFIG
mkdir -v ~/parity

#SAVE CHAIN SPEC
sudo cp -v chain_spec.json ~/parity/chain_spec.json

#CREATE CONFIG FOR NODE
sudo cp -v config.toml ~/parity/$1.toml
echo $1 >> ~/parity/node.pwds
echo -n "[account]" >> ~/parity/$1.toml
echo -n 'password = ["node.pwds"]' >> ~/parity/$1.toml



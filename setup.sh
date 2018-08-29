#!/bin/bash

# INSTALL PARITY AND REQUIRED DEPENDENCIES
sudo apt-get install build-essential openssl libssl-dev libudev-dev
bash <(curl https://get.parity.io -L)

# FOLDER FOR CHAIN SPEC AND NODE CONFIG
mkdir ~/parity
cd ~/parity

#Save Chain Spec
sudo cp chain_spec.json ~/parity/chain_spec.json

#Create config for node
sudo cp config.toml ~/parity/$1.toml
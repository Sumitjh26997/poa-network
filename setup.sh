#!/bin/bash

# INSTALL PARITY AND REQUIRED DEPENDENCIES
sudo apt-get install build-essential openssl libssl-dev libudev-dev
bash <(curl https://get.parity.io -L)

# FOLDER FOR CHAIN SPEC AND NODE CONFIG
mkdir ~/parity
cd ~/parity
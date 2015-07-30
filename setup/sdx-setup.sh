#!/usr/bin/env bash

cd ~

# Install Quagga 
sudo apt-get install -y quagga

# Install MiniNExT
# MiniNExT dependencies
sudo apt-get install -y help2man python-setuptools

git clone https://github.com/USC-NSL/miniNExT.git miniNExT/  
cd miniNExT  
git checkout 1.4.0  
sudo make install

# Install Requests
sudo pip install requests

# Install SDX
cd ~
git clone https://github.com/rbirkner/sdx-ryu.git
cd sdx-ryu
sudo chmod 755 xrs/client.py xrs/route_server.py examples/simple/mininet/sdx_mininext.py
mkdir xrs/ribs
cd ~

# Install ExaBGP
sudo pip install -U exabgp

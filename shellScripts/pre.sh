#!/bin/bash

 echo "Running Pre installation script" 
sudo apt-get install -y python-pip python-dev python3-dev python3-pip
wget https://bootstrap.pypa.io/ez_setup.py -O - | sudo python
wget https://bootstrap.pypa.io/ez_setup.py -O - | sudo python3

 echo "Pre Installation Script Complete"

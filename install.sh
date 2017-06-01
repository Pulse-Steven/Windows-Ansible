#!/bin/bash
# Script to download and install Ansible for self configuration

ssh-keygen
sudo pip install "pywinrm>=0.2.2" 
sudo pip install pywinrm[credssp] 
sudo pip install boto 
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible
sudo apt-get install git
sudo ansible --version
sudo pip install --upgrade pip
sudo mkdir pulsemicro
cd pulsemicro
sudo git clone https://github.com/pulsemicro/ansible.git
sudo git config --global user.name "username"
cd ansible

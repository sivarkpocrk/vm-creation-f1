#!/bin/bash

# Update system
sudo apt update && sudo apt upgrade -y

# Install XFCE and xRDP
sudo apt install -y xfce4 xfce4-goodies xrdp
echo xfce4-session > ~/.xsession
sudo systemctl enable xrdp
sudo systemctl restart xrdp
sudo ufw allow 3389

# Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb

# Install NoMachine
wget https://download.nomachine.com/download/8.11/Linux/nomachine_8.11.1_1_amd64.deb
sudo dpkg -i nomachine_8.11.1_1_amd64.deb
sudo ufw allow 4000

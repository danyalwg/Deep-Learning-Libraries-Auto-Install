#!/bin/bash

# Update and upgrade system
sudo apt update -y
sudo apt upgrade -y

# Install cmake
sudo apt install -y cmake

# Install python3 and pip
sudo apt install -y python3 python3-pip

# Install Python libraries
pip3 install --user --upgrade numpy scipy pandas matplotlib seaborn opencv-python-headless scikit-image pillow

# Install deep learning libraries
pip3 install --user --upgrade tensorflow keras torch torchvision theano

# Install IDEs and code editors
sudo snap install --classic pycharm-community
pip3 install --user --upgrade jupyter
sudo snap install --classic code

# Sublime Text 3 install with apt-get
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

# Install Git
sudo apt install -y git

# Install Docker
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo systemctl start docker
sudo systemctl enable docker

echo "Installation complete!"

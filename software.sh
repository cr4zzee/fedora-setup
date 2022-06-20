#!/bin/bash

sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin docker-compose libappindicator-gtk3 snapd
sudo systemctl start docker
sudo systemctl enable docker
sudo groupadd docker
sudo gpasswd -a $USER docker
sudo service docker restart
sudo service docker.io restart
sudo rpm -i https://downloads.slack-edge.com/releases/linux/4.21.1/prod/x64/slack-4.21.1-0.1.fc21.x86_64.rpm
wget -P ~/Downloads https://download.jetbrains.com/idea/ideaIU-2021.2.2.tar.gz
mkdir ~/Applications
tar -xvf ~/Downloads/ideaIU-2021.2.2.tar.gz -C ~/Applications
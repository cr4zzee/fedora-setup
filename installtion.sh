#!/bin/bash

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf config-manager --set-enabled google-chrome
sudo dnf update
sudo dnf install fedora-workstation-repositories
sudo dnf install google-chrome-stable code zsh gnome-tweak-tool 
chsh -s /usr/bin/zsh
code --install-extension esbenp.prettier-vscode 
code --install-extension dracula-theme.theme-dracula 
code --install-extension ms-azuretools.vscode-docker 
code --install-extension vscode-icons-team.vscode-icons 
code --install-extension eamodio.gitlens
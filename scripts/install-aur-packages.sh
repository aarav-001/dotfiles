#!/bin/bash

echo -e "\n======> Installing Yay\n"

cd /opt
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R $USER:$USER ./yay-git
cd yay-git
makepkg -si --no-confirm

echo -e "\n======> Installing AUR Packages...\n"

yay -S $(<pkg/aur-packages.txt)

echo -e "\n======> Completed Installing AUR Packages!\n"

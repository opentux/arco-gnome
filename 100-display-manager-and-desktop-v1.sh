#!/bin/bash
set -e
sudo pacman -Syyu --noconfirm

#installing displaymanager or login manager
#sudo pacman -S --noconfirm --needed gdm

sudo AUR-DS/install-gdm-prime-v1.sh

#installing desktop environment
sudo pacman -S gnome gnome-extra --noconfirm --needed

# add arco wallpaper
#sudo pacman -S --noconfirm --needed arcolinux-wallpapers-git 

# add gnome software and flatpak
sudo pacman -S --noconfirm --needed gnome-software 
sudo pacman -S --noconfirm --needed flatpak 

# Add support gnome shell extension web site for firefox 
sudo pacman -S --noconfirm --needed chrome-gnome-shell

#enabling displaymanager or login manager
sudo systemctl enable gdm.service -f
sudo systemctl set-default graphical.target

#Remove anything you do not like from the installed applications
#sudo pacman -R ...

#!/bin/bash
set -e
##################################################################################################################
# Author	:	Erik Dubois
# Website	:	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxb.com
# Website	:	https://www.arcolinuxiso.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
echo "#################################################"
echo "If it feels like the downloads are too slow"
echo "Stop the installation with CTRL + C"
echo "and run the alias - mirror in the terminal"
echo "#################################################"

sudo pacman -Syyu --noconfirm

#installing displaymanager or login manager
sudo pacman -S --noconfirm --needed gdm

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

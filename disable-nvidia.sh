#!/bin/bash

# Disable nouveau kernel module
sudo echo 'blacklist nouveau' > /etc/modprobe.d/blacklist-nvidia-nouveau.conf
sudo echo 'options nouveau modeset=0' >> /etc/modprobe.d/blacklist-nvidia-nouveau.conf
sudo mkinitcpio -p linux


#disable nvidia gpu for use nvidia-xrun#
sudo pacman -S --noconfirm --needed bbswitch 
sudo pacman -S --noconfirm --needed bbswitch-dkms

sudo echo 'bbswitch ' > /etc/modules-load.d/bbswitch.conf
sudo echo 'options bbswitch load_state=0 unload_state=1' > /etc/modprobe.d/bbswitch.conf

# install intel media driver and utils#

sudo pacman -S --noconfirm --needed intel-media-driver
sudo pacman -S --noconfirm --needed libva libva-utils

# test with intel hd 630#
sudo echo 'export LIBVA_DRIVER_NAME=iHD' > /etc/profile.d/intel-media.sh

# install mesa-demos for glxgear
sudo pacman -S --noconfirm --needed mesa-demos


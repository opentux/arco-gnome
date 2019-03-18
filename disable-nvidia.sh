#!/bin/bash

# Disable nouveau kernel module
sudo bash -c "echo 'blacklist nouveau' > /etc/modprobe.d/blacklist-nvidia-nouveau.conf"
sudo bash -c "echo 'options nouveau modeset=0' >> /etc/modprobe.d/blacklist-nvidia-nouveau.conf"
sudo bash -c "echo 'blacklist nvidia' >> /etc/modprobe.d/blacklist-nvidia-nouveau.conf"
sudo bash -c "echo 'blacklist nvidia-modeset' >> /etc/modprobe.d/blacklist-nvidia-nouveau.conf"
sudo bash -c "echo 'blacklist nvidia-uvm' >> /etc/modprobe.d/blacklist-nvidia-nouveau.conf"
sudo bash -c "echo 'blacklist ttm' >> /etc/modprobe.d/blacklist-nvidia-nouveau.conf"
sudo bash -c "echo 'blacklist drm_kms_helper' >> /etc/modprobe.d/blacklist-nvidia-nouveau.conf"
sudo bash -c "echo 'blacklist drm' >> /etc/modprobe.d/blacklist-nvidia-nouveau.conf"

sudo mkinitcpio -p linux


#disable nvidia gpu for use nvidia-xrun#
sudo pacman -S --noconfirm --needed bbswitch 
#sudo pacman -S --noconfirm --needed bbswitch-dkms

sudo bash -c "echo 'bbswitch ' > /etc/modules-load.d/bbswitch.conf"
sudo bash -c "echo 'options bbswitch load_state=0 unload_state=0' > /etc/modprobe.d/bbswitch.conf"

# install intel media driver and utils#

sudo pacman -S --noconfirm --needed intel-media-driver
sudo pacman -S --noconfirm --needed libva libva-utils

# test with intel hd 630#
sudo bash -c "echo 'export LIBVA_DRIVER_NAME=iHD' > /etc/profile.d/intel-media.sh"

# install mesa-demos for glxgear
sudo pacman -R --noconfirm glxinfo
sudo pacman -S --noconfirm --needed mesa-demos

# install bumblebeed

sudo pacman -S --noconfirm bumblebee
systemctl enable bumblebeed.service
sufo gpasswd -a opentux bumblebee


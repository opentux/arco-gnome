#!/bin/bash

# current user to variable user
user=$(whoami)

# install libvirtd for qemu

sudo pacman -S --noconfirm --needed libvirt
sudo pacman -S --noconfirm --needed qemu
sudo pacman -S --noconfirm --needed qemu-arch-extra
sudo pacman -S --noconfirm --needed bridge-utils ebtables dnsmasq dmidecode ovmf

# install gnome-boxes
sudo pacman -S --noconfirm --needed gnome-boxes

# for add virt manager # we do not have to install it if use gnome-boxes for simple use.
# but virt-managet is more complete :)
sudo pacman -S --noconfirm --neededvirt-manager virt-viewer 

# add user variable to group libvirt
sudo gpasswd -a $user libvirt

# add service libvirtd enable in systemctl
sudo systemctl enable libvirtd
sudo systemctl start libvirtd



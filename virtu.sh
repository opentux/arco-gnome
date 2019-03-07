#!/bin/bash

# install libvirtd for qemu

sudo pacman -S --noconfirm --needed libvirt
sudo pacman -S --noconfirm --needed qemu
sudo pacman -S --noconfirm --needed qemu-arch-extra

# add user to group libvirt
user=$(whoami)
sudo gpasswd -a $user libvirtd

# add service libvirtd enable in systemctl
sudo systemctl enable libvirtd

# install gnome-boxes
sudo pacman -S --noconfirm --needed gnome-boxes


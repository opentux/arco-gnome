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
sudo pacman -S --noconfirm --needed virt-manager  
sudo pacman -S --noconfirm --needed virt-viewer

# add user variable to group libvirt & kvm
sudo gpasswd -a $user libvirt
sudo gpasswd -a $user kvm

# add service libvirtd enable in systemctl
sudo systemctl enable libvirtd
sudo systemctl start libvirtd

echo -e "options kvm-intel nested=1" | sudo tee -a /etc/modprobe.d/kvm-intel.conf

echo '
nvram = [
    "/usr/share/ovmf/x64/OVMF_CODE.fd:/usr/share/ovmf/x64/OVMF_VARS.fd"
]' | sudo tee --append /etc/libvirt/qemu.conf

echo "Run this code in the terminal to get your network up and running after reboot"
echo "sudo virsh net-start default"

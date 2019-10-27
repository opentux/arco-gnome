#!/bin/bash

# change mkinitcpio conf
# add nvme i915 & bbswitch module
# add compression lz4 for speedboot

sudo sed -i '/MODULES="crc32c-intel"/c\MODULES="i915 nvme crc32c-intel"' /etc/mkinitcpio.conf
sudo sed -i '/MODULES=""/c\MODULES="i915 nvme"' /etc/mkinitcpio.conf
sudo sed -i '/#COMPRESSION="lz4"/c\COMPRESSION="lz4"' /etc/mkinitcpio.conf
sudo sed -i '/#COMPRESSION_OPTIONS=()/c\COMPRESSION_OPTIONS=(-9)' /etc/mkinitcpio.conf

sudo mkinitcpio -p linux

sudo sed -i '/GRUB_TIMEOUT=5/c\GRUB_TIMEOUT=0' /etc/default/grub
sudo sed -i '/#GRUB_HIDDEN_TIMEOUT=5/c\GRUB_HIDDEN_TIMEOUT=0' /etc/default/grub
sudo sed -i '/#GRUB_HIDDEN_TIMEOUT_QUIET=true/c\GRUB_HIDDEN_TIMEOUT_QUIET=true' /etc/default/grub

sudo grub-mkconfig -o /boot/grub/grub.cfg

#Fast reboot

sudo systemctl stop lvm2-lvmetad.socket lvm2-lvmetad.service
sudo systemctl disable lvm2-lvmetad.socket lvm2-lvmetad.service

#Disable Wayland for optimus manager

sudo sed -i '/#WaylandEnable=false/c\WaylandEnable=false' /etc/gdm/custom.conf

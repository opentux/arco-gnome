#!/bin/bash

# change mkinitcpio conf
# add nvme i915 & bbswitch module
# add compression lz4 for speedboot

sudo sed -i '/MODULES=""/c\MODULES="i915 nvme bbswitch"' /etc/mkinitcpio.conf
sudo sed -i '/#COMPRESSION="lz4"/c\COMPRESSION="lz4"' /etc/mkinitcpio.conf
sudo sed -i '/#COMPRESSION_OPTIONS=()/c\COMPRESSION_OPTIONS=(-9)' /etc/mkinitcpio.conf

sudo mkinitcpio -p linux

sudo sed -i '/GRUB_TIMEOUT=5/c\GRUB_TIMEOUT=0' /etc/default/grub
sudo sed -i '/#GRUB_HIDDEN_TIMEOUT=5/c\GRUB_HIDDEN_TIMEOUT=0' /etc/default/grub
sudo sed -i '/#GRUB_HIDDEN_TIMEOUT_QUIET=true/c\GRUB_HIDDEN_TIMEOUT_QUIET=true' /etc/default/grub

sudo grub-mkconfig -o /boot/grub/grub.cfg

# add conf intel-undervolt for intel 8550u
sudo sed -i "/undervolt 0 'CPU' 0/c\undervolt 0 'CPU' -90" /etc/intel-undervolt.conf
sudo sed -i "/undervolt 1 'GPU' 0/c\undervolt 1 'CPU' -50" /etc/intel-undervolt.conf
sudo sed -i "/undervolt 2 'CPU Cache' 0/c\undervolt 2 'CPU Cache' -90" /etc/intel-undervolt.conf

sudo systemctl restart intel-undervolt
sudo systemctl status intel-undervolt
sudo intel-undervolt read

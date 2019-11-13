#Arch linux Gnome (base arcolinuxd iso)

# Start by installing the latest ArcoLinuxD installation

Download at https://arcolinux.info and burn to usb

# Follow installation tutorials on

Tutorials on https://arcolinuxd.com

# Custom version arco-gnome for my personal use (with a laptop asus ux461un) 
with intel graphics uhd 620 and nvidia mx150 with optimus-manager 
(no switch for gdm at this moment, but switch at reboot is ok)
no lvm, no cups, no printers
this repository will be used as an experiment on scripts

Thanks Erik Dubois for the original works

# Start-install-asus #
- Gnome desktop environment with gdm.
- Application installation base
- Intel-undervolt with conf for u8550
- timeshift for Snapshot 
- gnome-boxes, virt-manager, qemu, kvm # for virtual machine
- kernel mkinit conf for speed boot with lz4 compression
- grub config for no waiting configuration
- intel-media-driver # for hardware dec/enc video

for install

install minimal arcolinuxD

update the base install

mirror # for update your best mirror
pacman -Syyu # for upgrade 
reboot # for reboot

and launch
./start-install-notebook-v1.sh #### for notebook with nvidia gpu
and reboot

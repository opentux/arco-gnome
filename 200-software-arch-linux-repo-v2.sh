#!/bin/bash
set -e
# software from standard Arch Linux repositories
# Core, Extra, Community, Multilib repositories
echo "Installing category Accessories"

sudo pacman -S --noconfirm --needed cmatrix
sudo pacman -S --noconfirm --needed gnome-screenshot
sudo pacman -S --noconfirm --needed redshift
sudo pacman -S --noconfirm --needed guake


echo "Installing category Development"

sudo pacman -S --noconfirm --needed atom
sudo pacman -S --noconfirm --needed make
sudo pacman -S --noconfirm --needed automake
sudo pacman -S --noconfirm --needed gcc
sudo pacman -S --noconfirm --needed patch
sudo pacman -S --noconfirm --needed perl


#sudo pacman -S --noconfirm --needed

echo "Installing category Education"

#sudo pacman -S --noconfirm --needed

echo "Installing category Games"

#sudo pacman -S --noconfirm --needed

echo "Installing category Graphics"

sudo pacman -S --noconfirm --needed darktable
sudo pacman -S --noconfirm --needed gimp
sudo pacman -S --noconfirm --needed gnome-font-viewer
sudo pacman -S --noconfirm --needed grafx2
#sudo pacman -S --noconfirm --needed inkscape
#sudo pacman -S --noconfirm --needed nomacs
#sudo pacman -S --noconfirm --needed pinta
#sudo pacman -S --noconfirm --needed ristretto
#sudo pacman -S --noconfirm --needed

echo "Installing category Internet"

sudo pacman -S --noconfirm --needed chromium
#sudo pacman -S --noconfirm --needed filezilla
sudo pacman -S --noconfirm --needed firefox
sudo pacman -S --noconfirm --needed firefox-i18n-fr
#sudo pacman -S --noconfirm --needed qbittorrent
#sudo pacman -S --noconfirm --needed

echo "Installing category Multimedia"

sudo pacman -S --noconfirm --needed pragha
sudo pacman -S --noconfirm --needed shotwell
#sudo pacman -S --noconfirm --needed simplescreenrecorder
#sudo pacman -S --noconfirm --needed snappy-player
sudo pacman -S --noconfirm --needed vlc
sudo pacman -S --noconfirm --needed totem

echo "Installing category Office"

sudo pacman -S --noconfirm --needed evince
#sudo pacman -S --noconfirm --needed evolution
#sudo pacman -S --noconfirm --needed geary
#sudo pacman -S --noconfirm --needed libreoffice-fresh
#sudo pacman -S --noconfirm --needed libreoffice-fresh-fr

echo "Installing category Other"

#sudo pacman -S --noconfirm --needed

echo "Installing category System"

sudo pacman -S --noconfirm --needed arc-gtk-theme
sudo pacman -S --noconfirm --needed arc-kde
sudo pacman -S --noconfirm --needed baobab
sudo pacman -S --noconfirm --needed bleachbit
sudo pacman -S --noconfirm --needed curl
sudo pacman -S --noconfirm --needed dbus
sudo pacman -S --noconfirm --needed dconf-editor
sudo pacman -S --noconfirm --needed dmidecode
sudo pacman -S --noconfirm --needed ffmpegthumbnailer
sudo pacman -S --noconfirm --needed git
sudo pacman -S --noconfirm --needed glances
sudo pacman -S --noconfirm --needed gnome-disk-utility
sudo pacman -S --noconfirm --needed gnome-keyring
sudo pacman -S --noconfirm --needed gnome-system-monitor
sudo pacman -S --noconfirm --needed gnome-terminal
sudo pacman -S --noconfirm --needed gnome-tweak-tool
sudo pacman -S --noconfirm --needed gparted
sudo pacman -S --noconfirm --needed grsync
sudo pacman -S --noconfirm --needed gtk-engine-murrine
sudo pacman -S --noconfirm --needed gvfs gvfs-mtp gvfs-smb
sudo pacman -S --noconfirm --needed gvfs-google
sudo pacman -S --noconfirm --needed hardinfo
sudo pacman -S --noconfirm --needed hddtemp
sudo pacman -S --noconfirm --needed hdparm
sudo pacman -S --noconfirm --needed htop
sudo pacman -S --noconfirm --needed kvantum-qt5
sudo pacman -S --noconfirm --needed kvantum-theme-arc
sudo pacman -S --noconfirm --needed less
sudo pacman -S --noconfirm --needed lm_sensors
sudo pacman -S --noconfirm --needed lsb-release
sudo pacman -S --noconfirm --needed mlocate
#sudo pacman -S --noconfirm --needed net-tools
#sudo pacman -S --noconfirm --needed notify-osd
sudo pacman -S --noconfirm --needed noto-fonts
#sudo pacman -S --noconfirm --needed numlockx
#sudo pacman -S --noconfirm --needed polkit-gnome
sudo pacman -S --noconfirm --needed qt5ct
#sudo pacman -S --noconfirm --needed sane
#sudo pacman -S --noconfirm --needed screenfetch
#sudo pacman -S --noconfirm --needed scrot
#sudo pacman -S --noconfirm --needed simple-scan
sudo pacman -S --noconfirm --needed sysstat
#sudo pacman -S --noconfirm --needed terminator
#sudo pacman -S --noconfirm --needed termite
#sudo pacman -S --noconfirm --needed thunar
#sudo pacman -S --noconfirm --needed thunar-archive-plugin
#sudo pacman -S --noconfirm --needed thunar-volman
sudo pacman -S --noconfirm --needed ttf-ubuntu-font-family
sudo pacman -S --noconfirm --needed ttf-droid
#sudo pacman -S --noconfirm --needed tumbler
#sudo pacman -S --noconfirm --needed vnstat
sudo pacman -S --noconfirm --needed wget
#sudo pacman -S --noconfirm --needed wmctrl
#sudo pacman -S --noconfirm --needed unclutter
#sudo pacman -S --noconfirm --needed rxvt-unicode
#sudo pacman -S --noconfirm --needed urxvt-perls
sudo pacman -S --noconfirm --needed xdg-user-dirs
sudo pacman -S --noconfirm --needed aria2
sudo pacman -S --noconfirm --needed ccache
sudo pacman -S --noconfirm --needed breeze
#sudo pacman -S --noconfirm --needed


###############################################################################################

# installation of zippers and unzippers, midnight commander 
sudo pacman -S --noconfirm --needed unace unrar zip unzip p7zip mtools mc sharutils uudeview arj cabextract file-roller

###############################################################################################

# Nvidia driver 
sudo pacman -S --noconfirm --needed nvidia
sudo pacman -S --noconfirm --needed nvidia-settings

echo "################################################################"
echo "#### Software from standard Arch Linux Repo installed  #########"
echo "################################################################"

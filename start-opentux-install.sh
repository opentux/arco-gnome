#!/bin/bash

sh 000-use-all-cores-makepkg-conf-v3.sh
sh 100-display-manager-and-desktop-v1.sh
sh 110-install-sound-v3.sh
sh 120-bluetooth-v2.sh
sh 140-install-samba-v3.sh
sh 150-install-network-discovery-v4.sh
sh 160-install-tlp-for-laptops-v1.sh
sh 200-software-arch-linux-repo-v2.sh
sh 500-software-AUR-repo-distro-specific-v1.sh
sh 700-installing-fonts-v2.sh
sh 900-fix-microcode-error-v1.sh
sh disable-nvidia.sh
sh Personal/300-firefox-fix-unreadable-text-for-dark-themes-settings-v2.sh
sh AUR/install-zsh-v3.sh
sh Personal/400-zsh-software-themes-v1.sh

#copy arco wallpaper to Image folder

cp -v /usr/share/backgrounds/arcolinux/* /home/opentux/Images/

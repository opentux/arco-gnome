#!/bin/bash
set -e
##################################################################################################################
# Author	:	Erik Dubois
# Website	:	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo "AUR - DESKTOP SPECIFIC APPLICATIONS "


#sh AUR-DS/install-chrome-gnome-shell-git-v*.sh

#sh AUR-DS/install-gnome-terminal-transparency-v*.sh

#sh AUR-DS/install-nautilus-compare-v*.sh

sh AUR-DS/install-nautilus-image-tools-v*.sh

sh AUR-DS/install-nautilus-renamer-v*.sh

sh AUR-DS/install-intel-undervolt-v*.sh

# And Enable service intel-undervolt
sudo systemctl enable intel-undervolt

sh AUR-DS/install-appimagelauncher-v*.sh

#sh AUR/install-yad-v*.sh

sh AUR-DS/install-nvidia-xrun-v*.sh

sh AUR-DS/install-timeshift-v*.sh

sh AUR-DS/install-mint-y-v*.sh

sh AUR-DS/install-google-chrome-v*.sh

sh AUR-DS/install-flat-remix-v*.sh

sh AUR-DS/install-gitkraken-v*.sh

echo "################################################################"
echo "####       Software from AUR-DS folder installed          ######"
echo "################################################################"

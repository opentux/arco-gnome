#!/bin/bash

# install default user conf custom

user=$(whoami)

sudo cp user.tar /home/
cd /home
sudo tar -xvf user.tar
sudo chown -R $user:$user user/
#sudo cp -rTv user/* /home/$user
rsync -rtv user/ $user/
sudo rm -f user.tar 
sudo rm -rf /home/user/



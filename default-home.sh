#!/bin/bash

# install default user conf custom

user=$(whoami)

sudo cp user.tar.gz /home/
cd /home
sudo tar -zxvf user.tar.gz
sudo chown -R $user:$user user/
rsync -rtv user/ $user/
sudo rm -f user.tar.gz 
sudo rm -rf /home/user/



#!/bin/bash

# add conf intel-undervolt for intel 8550u
sudo sed -i "/undervolt 0 'CPU' 0/c\undervolt 0 'CPU' -90" /etc/intel-undervolt.conf
sudo sed -i "/undervolt 1 'GPU' 0/c\undervolt 1 'CPU' -50" /etc/intel-undervolt.conf
sudo sed -i "/undervolt 2 'CPU Cache' 0/c\undervolt 2 'CPU Cache' -90" /etc/intel-undervolt.conf

sudo systemctl restart intel-undervolt
sudo systemctl status intel-undervolt
sudo intel-undervolt read


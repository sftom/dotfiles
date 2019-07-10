#!/bin/bash

SRC_DEB=~/Downloads/*.deb
for b in $SRC_DEB
do
    dpkg -i "$b" 
done

apt-get install -f -y

apt-get autoremove -y
apt-get clean -y
apt-get autoclean -y

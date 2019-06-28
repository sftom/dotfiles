#!/bin/bash

SRC_DEB=~/Downloads/*.deb

for b in $SRC_DEB
do
    dpkg -i "$b"
done
 
apt install -f


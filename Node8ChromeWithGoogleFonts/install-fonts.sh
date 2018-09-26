#!/bin/bash

_gf="google-fonts"

wget https://github.com/google/fonts/archive/master.tar.gz -O $_gf.tar.gz
tar -xf $_gf.tar.gz
mkdir -p /usr/share/fonts/truetype/$_gf
find $PWD/fonts-master/ -name "*.ttf" -exec install -m644 {} /usr/share/fonts/truetype/google-fonts/ \; || return 1
fc-cache -f > /dev/null
rm -f $_gf.tar.gz
echo "Google fonts installed!"
#!/bin/bash

_gf="google-fonts"

apt-get install wget

rm -f $_gf.tar.gz

echo "Connecting to Github server..."
wget https://github.com/google/fonts/archive/master.tar.gz -O $_gf.tar.gz

echo "Extracting the downloaded archive..."
tar -xf $_gf.tar.gz

echo "Creating the /usr/share/fonts/truetype/$_gf folder"
mkdir -p /usr/share/fonts/truetype/$_gf

echo "Installing all .ttf fonts in /usr/share/fonts/truetype/$_gf"
find $PWD/fonts-master/ -name "*.ttf" -exec install -m644 {} /usr/share/fonts/truetype/google-fonts/ \; || return 1

echo "Updating the font cache"
fc-cache -f > /dev/null

rm -f $_gf.tar.gz

echo "Done."
#!/bin/bash

_gf="google-fonts"

apt-get update && apt-get install wget unzip -y

wget "https://fonts.google.com/download?family=Open%20Sans|Roboto|Work%20Sans" -O $_gf.zip
unzip $_gf.zip -d $PWD/$_gf
mkdir -p /usr/share/fonts/truetype/$_gf
find $PWD/$_gf/ -name "*.ttf" -exec install -m644 {} /usr/share/fonts/truetype/google-fonts/ \; || return 1
fc-cache -f > /dev/null
rm -f $_gf.zip
echo "Sans fonts installed!"
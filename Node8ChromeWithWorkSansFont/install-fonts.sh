#!/bin/bash

_gf="google-fonts"

wget "https://fonts.google.com/download?family=Open%20Sans|Roboto|Work%20Sans" -O $_gf.zip
unzip $_gf.zip
mkdir -p /usr/share/fonts/truetype/$_gf
find $PWD/fonts/ -name "*.ttf" -exec install -m644 {} /usr/share/fonts/truetype/google-fonts/ \; || return 1
fc-cache -f > /dev/null
rm -f $_gf.zip
echo "Google fonts installed!"
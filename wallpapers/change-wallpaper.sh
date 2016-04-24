#!/bin/bash

files=(/home/theodik/.wallpapers/*)
filename=${files[RANDOM % ${#files[@]}]}

gsettings set org.cinnamon.desktop.background picture-uri  "file:///$filename"

#!/bin/bash
#https://italolelis.com/posts/multitouch-gestures-ubuntu-fusuma//
#you may have to chmod this to 775 and run as SUDO to get it to work

#clearout the screen
clear

#Adds user to the input group
gpasswd -a $USER input

#runs the update and installs appropriate files
apt update
apt install ruby gem libinput-tools xdotool
gem install fusuma

#makes the required configuration folders
mkdir '~/.config/fusuma'

#copies the config file config.yml.
cp 'config.yml.temp' '~/.config/fusuma/config.yml'
echo ''
echo ''
echo "Please add 'Fusuam' to Autostart now and reboot"
echo ''
echo ''

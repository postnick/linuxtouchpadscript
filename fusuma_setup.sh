#!/bin/bash
#https://italolelis.com/posts/multitouch-gestures-ubuntu-fusuma//

#clearout the screen
clear

#Adds user to the input group
sudo gpasswd -a $USER input

#runs the update and installs appropriate files
sudo apt update
sudo apt install ruby gem libinput-tools xdotool
sudo gem install fusuma

#makes the required configuration folders
mkdir '~/.config/fusuma'

#copies the config file config.yml.
cp 'config.yml.temp' '~/.config/fusuma/config.yml'
echo ''
echo ''
echo "Please add 'Fusuam' to Autostart now and reboot"
echo ''
echo ''

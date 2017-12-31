#!/bin/bash -e
#General Setup Script For Raspian Install

#Get Generic Install Script from GitHub
cd
git clone https://github.com/dandrzej80/Raspi-Scripts.git

#Run Generic Scripts
cd Raspi-Scripts
sudo bash basic-setup.sh

#Install and Setup WebServer
sudo apt-get install apache2 -y

#Move Webpage
cd
sudo mv /home/pi/Google-Wall-Calendar/index.html /var/www/html/index.html

#Install Web Browser and Customize Page
sudo apt-get install iceweasel unclutter x11-xserver-utils -y
sudo apt-get install xdotool -y
sudo mv /home/pi/Google-Wall-Calendar/stylish.css /var/www/html/stylish.css
sudo mv /home/pi/Google-Wall-Calendar/startkiosk.sh /var/www/html/startkiosk.sh
cat /home/pi/Google-Wall-Calendar/edit-autostart | sudo tee -a /home/pi/.config/lxsession/LXDE-pi/autostart

#Rotate Screen
cat /home/pi/Google-Wall-Calendar/edit-config.txt | sudo tee -a /boot/config.txt

#Clean up Install Files
#Remove Raspi-Scripts Folder
rm /home/pi/Raspi-Scripts/*
rm -rf Raspi-Scripts
#Remove Google-Wall-Calendar Folder
rm /home/pi/Google-Wall-Calendar/*
rm -rf Google-Wall-Calendar

#Reboot Pi
#sudo shutdown -r now

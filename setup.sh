#!/bin/bash -e
#General Setup Script For Raspian Install

#Get Generic Install Script from GitHub
cd
git clone https://github.com/dandrzej80/Raspi-Scripts.git

#Run Generic Scripts
cd Raspi-Scripts
sudo bash ./basic-setup.sh

#Install and Setup WebServer
sudo apt-get install apache2 -y

#Move Webpage
cd
sudo mv /Google-Wall-Calendar/index.html /var/www/html/index.html

#Install Web Browser and Customize Page
sudo apt-get install iceweasel -y
sudo mv /Google-Wall-Calendar/index.html /var/www/html/index.html
#sudo mv /Google-Wall-Calendar/stylish.css 

#Clean up Install Files
#Remove Raspi-Scripts Folder
cd
rm ./Raspi-Scripts/*
rm -rf Raspi-Scripts
#Remove Google-Wall-Calendar Folder
#rm ./Google-Wall-Calendar/*
#rm -rf Google-Wall-Calendar

#Reboot Pi
#sudo shutdown -r now

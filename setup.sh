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

#Clean up Install Files
#Remove Raspi-Scripts Folder
cd
rm ./Raspi-Scripts/*
rm -rf Raspi-Scripts

#Reboot Pi
#sudo shutdown -r now

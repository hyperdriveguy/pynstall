#!/bin/bash
#Check to see if the user is root
echo "Making sure you are root..."
sudo
echo "PYNSTALL INSTALLER"
read -e -p "Are the pynstall files in your Downloads? (y/n)" yn
if $yn = "y" or "Y" then:
  #Ask for the name of the home directory
  read -e -p "Enter the name of your home directory: " home
  #Move files
  mv /home/$home/Downloads/pynstall/pynstall.py /usr/bin/pynstall.py
  mv /home/$home/Downloads/pynstall/pynstall.desktop /home/$home/Desktop/pynstall.desktop
  mv /home/$home/Downloads/pynstall/pynstall /usr/bin/pynstall
  #Delete files
  mv /home/$home/Downloads/pynstall/install.sh /home/$home/install.sh
  rm /home/$home/Downloads/pynstall
elif $yn = "n" or "N" then:
  read -e -p "Enter the name of the directory the Pynstall folder is in. For example: /home/derp/Downloads: " pynstall
  #Ask for the name of the home directory
  read -e -p "Enter the name of your home directory: " home
  #Move files
  mv $pynstall/pynstall.py /usr/bin/pynstall.py
  mv $pynstall/pynstall/pynstall.desktop /home/$home/Desktop/pynstall.desktop
  mv $pynstall/pynstall/pynstall /usr/bin/pynstall
  #Delete files
  mv $pynstall/pynstall/install.sh /home/$home/install.sh
  rm $pynstall/pynstall
else:
  echo "Rerun the installer..."
  sleep
  exit
exit

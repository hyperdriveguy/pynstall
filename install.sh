#!/bin/bash
#Check to see if the user is root
echo "Making sure you are root..."
su
echo "PYNSTALL INSTALLER"
echo "Installing dependencies..."
apt-get install --force-yes python3 python3-apt
read -e -p "Are the pynstall files in your Downloads? (y/n)" yn
if $yn = "y" or "Y" then:
  #Ask for the name of the home directory
  read -e -p "Enter the name of your home directory: " home
  #Move files
  mv /home/$home/Downloads/pynstall/pynstall.py /usr/bin/pynstall.py
  printf '[Desktop Entry]\n Encoding=UTF-8\n Version=1.0\n Type=Application\n Terminal=true\n Exec=pynstall\n Name=Pynstall\n Icon=/usr/share/python1.svg' > /home/$home/Desktop/pynstall.desktop
  mv /home/$home/Downloads/pynstall/pynstall /usr/bin/pynstall
  mv /home/$home/Downloads/pynstall/python1.svg /usr/share/python1.svg
  #Delete files
  mv /home/$home/Downloads/pynstall/install.sh /home/$home/install.sh
  rm /home/$home/Downloads/pynstall
elif $yn = "n" or "N" then:
  read -e -p "Enter the name of the directory the Pynstall folder is in. For example: /home/derp/Downloads: " pynstall
  #Ask for the name of the home directory
  read -e -p "Enter the name of your home directory: " home
  #Move files
  mv $pynstall/pynstall.py /usr/bin/pynstall.py
  mv $pynstall/pynstall/pynstall /usr/bin/pynstall
  printf '[Desktop Entry]\n Encoding=UTF-8\n Version=1.0\n Type=Application\n Terminal=true\n Exec=pynstall\n Name=Pynstall\n Icon=/usr/share/python1.svg' > /home/$home/Desktop/pynstall.desktop
  mv $pynstall/pynstall/python1.svg /usr/share/python1.svg
  #Delete files
  mv $pynstall/pynstall/install.sh /home/$home/install.sh
  rm $pynstall/pynstall
else:
  echo "Rerun the installer..."
  sleep
  exit
exit

#!/bin/bash/sh
echo "PYNSTALL INSTALLER"
echo "Make sure the Pynstall folder is in your Downloads directory."
read -e -p "Enter the name of your home directory: " home

mv /home/$home/Downloads/pynstall/pynstall.py /usr/bin/pynstall.py
mv /home/$home/Downloads/pynstall/pynstall.desktop /home/$home/Desktop/pynstall.desktop


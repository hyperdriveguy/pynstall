#!/bin/bash

clear
echo "PYNSTALL INSTALLER"
echo "Installing dependencies..."
sudo apt-get install --force-yes python3 python3-apt
clear
read -e -p "Enter the name of the directory the Pynstall folder is in. For example: /home/derp/Downloads: " pynstall
clear
#Make Directory
sudo mkdir /usr/share/pynstall
#Move files
sudo mv $pynstall/pynstall.py /usr/bin/pynstall.py
sudo mv $pynstall/pynstall/pynstall /usr/bin/pynstall
sudo mv $pynstall/pynstall/python1.svg /usr/share/pynstall/python1.svg
sudo mv $pynstall/pynstall/README.md /usr/share/pynstall/README.md
sudo mv $pynstall/pynstall/.gitignore /usr/share/pynstall/.gitignore
mv $pynstall/pynstall/pynstall.desktop $HOME/Desktop/pynstall.desktop
#Delete files
rm $pynstall/pynstall/install.sh
echo "Installer finished!"
exit

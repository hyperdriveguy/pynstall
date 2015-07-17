#!/bin/bash

clear
echo "PYNSTALL INSTALLER"
echo "Installing dependencies..."
sudo apt-get install --force-yes python3 python3-apt
clear
read -e -p "Enter the name of the directory the Pynstall folder is in. For example: /home/derp/Downloads: " pynstall
clear
#Make directory
sudo mkdir /usr/share/pynstall
#Move files
sudo mv $pynstall/pynstall.py /usr/bin/pynstall.py
sudo mv $pynstall/pynstall/pynstall /bin/pynstall
sudo mv $pynstall/pynstall/python1.svg /usr/share/pynstall/python1.svg
sudo mv $pynstall/pynstall/README.md /usr/share/pynstall/README.md
sudo mv $pynstall/pynstall/.gitignore /usr/share/pynstall/.gitignore
sudo mv $pynstall/pynstall/LICENSE /usr/share/pynstall/LICENSE
mv $pynstall/pynstall/pynstall.desktop $HOME/Desktop/pynstall.desktop
#Delete installer and pynstall directory
rm $pynstall/pynstall/install.sh
rm -rf $pynstall/pynstall
echo "Installer finished!"
exit

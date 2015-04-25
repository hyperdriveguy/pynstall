#!/bin/bash

echo "Make sure you are root..."
clear
echo "PYNSTALL INSTALLER"
echo "Installing dependencies..."
sudo apt-get install --force-yes python3 python3-apt
clear
read -e -p "Enter the name of the directory the Pynstall folder is in. For example: /home/derp/Downloads: " pynstall
clear
#Move files
sudo mv $pynstall/pynstall.py /usr/bin/pynstall.py
sudo mv $pynstall/pynstall/pynstall /usr/bin/pynstall
sudo mv $pynstall/pynstall/python1.svg /usr/share/python1.svg
mv $pynstall/pynstall/pynstall.desktop $HOME/Desktop/pynstall.desktop
#Delete files
mv $pynstall/pynstall/install.sh $HOME/install.sh
rm $pynstall/pynstall/README.md
rm $pynstall/pynstall/.gitignore
echo "Installer finished!"
exit

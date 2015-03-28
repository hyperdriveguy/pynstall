#!/usr/bin/python3
from os import system as do

print("Make sure you are root.")
print("Updating repos...")
do("apt-get update")

exit = "no"

while exit == "no":
  command = input("What do you wish to do? Type help for a list of commands.  ")

  if command == "update":
   print("Updating system...")
   do("apt-get upgrade")
  if command == "install":
    pkg = input("Type the name of the package you wish to install:  ")
    do("apt-get install " + pkg)
    print("If no errors ocurred, then " + pkg +" was installed.")
  if command == "remove":
    pkg = input("Type the name of the package you wish to remove:  ")
    do("apt-get remove " + pkg)
    print("If no errors ocurred, then " + pkg +" was removed.")
  if command == "help":
    print("update(Update your packages) install(Installs packages) remove(Removes packages) help(Displays this screen) exit(exits program) notes(Displays release notes)")
    print("This APPT has Super Cow Powers.")
  if command == "exit":
   exit = "yes"
  if command == "notes":
    print("Version 1.0")
    print("Pynstall is a Advanced Python Packaging Tool (APPT). It depends on APT to work.")
  else:
   print("Make sure you typed the command correctly.")
  

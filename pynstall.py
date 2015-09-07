#!/usr/bin/python3
from os import system as do
from time import sleep
do("clear")
update = input("Reload Repositories? y/n")
if update == "y" or update == "Y":
  print("Reloading repositories...")
  do("sudo apt-get update")
  do("clear")
if update == "n" or update == "N":
  print("Continuing without reloading repositories.")
sleep(2)
exit = "no"
do("clear")
while exit == "no":
  do("clear")
  command = input("What do you wish to do? Type help for a list of commands.  ")
  if command == "reload":
    print("Reloading repositories...")
    do("sudo apt-get update")
    do("clear")
  if command == "update":
    print("Updating system...")
    do("sudo apt-get upgrade")
    do("clear")
  if command == "install":
    pkg = input("Type the name of the package you wish to install:  ")
    do("sudo apt-get install " + pkg)
    do("clear")
  if command == "remove":
    pkg = input("Type the name of the package you wish to remove:  ")
    do("sudo apt-get remove " + pkg)
    do("clear")
  if command == "help":
    print("install(Installs packages)  remove(Removes packages)  reload(Update your repositories)  update(Update your packages)  help(Displays this screen)  exit(exits program)  notes(Displays release notes)")
    print("This APPT has Super Cow Powers.")
    sleep(3)
    do("clear")
  if command == "exit":
    exit = "yes"
    do("clear")
  if command == "notes":
    print("Version 1.3")
    print("Pynstall is a Advanced Python Packaging Tool (APPT). It depends on APT to work.")
    sleep(5)
do("exit")

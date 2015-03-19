#!/usr/bin/python3
from os import system as do

print("Updating repos...")
do("apt-get update")

command = input("What do you wish to do? Type help for a list of commands.  ")

if command == "update":
  print("Updating system...")
  do("apt-get upgrade")

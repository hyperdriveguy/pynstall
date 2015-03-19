#!/usr/bin/python
import apt
import os
import sys

cache = apt.cache.Cache()
cache.update()
cache.open()

exit = 0
print("Make sure you are root.")
while exit = 0:
  command = input("What would you like to do? Type help for options.")
  if command == "help":
    print("Commands are: install(Installs packages) remove(Removes packages) update(Updates packages) exit(Exit this program) help(display this screen")
  elif command == "install":
    pkg_name = input("Type the name of the package you want to install)
    pkg = cache[pkg_name]
    if pkg.is_installed:
      print "{pkg_name} already installed".format(pkg_name=pkg_name)
  else:
      pkg.mark_install()

      try:
          cache.commit()
      except Exception, arg:
          print >> sys.stderr, "Sorry, package installation failed [{err}]"(err=str(arg))
  elif command == "remove":
    package = input("What package do you want to remove?")
    os.system("apt-get remove " + package)
    print(package.capitalize + " was removed.")
  elif command == "update":
   os.system("apt-get update")
   os.system("apt-get upgrade")
   print("System updated.")
  elif command == "exit":
    print("exiting...")
   os.system("clear")
    exit = 1
  else:
   print("Command not recognized. Type 'help' for a list of commands.")

import apt
import os
import tkinter as tk
tkinter.Tcl(screenName="Pynstall", baseName=None, className='Tk', useTk=0)

cache = apt.cache.Cache()
cache.update()

master = Tk()
#Initailize Package
pkg_name = Entry(pkgn)
pkg_name.pack()
pkg_name.focus_set()
pkg_to_install = pkg_name.get()
pkg = cache[pkg_name]

def install():
  if pkg.is_installed:
    tk.messagebox("Package is already installed.")
  else:
    pkg.mark_install()
  try:
        cache.commit()
    except Exception, arg:
      tk.messagebox(sys.stderr, "Sorry, package installation failed [{err}]".format(err=str(arg))
  tk.messagebox("Package is now installed."

install_pkg = Button(master, text="Install", width=15, command=install)
install_pkg.pack()

mainloop()

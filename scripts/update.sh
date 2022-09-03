#!/bin/bash
dotfile_directory="~/dotfiles/"

yay #Update yay & pacman packages
paccache -r #Delete cached versions of installed and uninstalled packages except for the most recent five

cd $dotfile_directory
pacman -Qqen > packages/pkglist.txt # Export list of installed packages
if [ $(git status --short | wc -l) -ne 0 ]; then
  echo "dirty!"
fi
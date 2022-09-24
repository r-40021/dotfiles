#!/bin/bash
dotfile_directory="${HOME}/dotfiles/"

yay #Update yay & pacman packages
paccache -r #Delete cached versions of installed and uninstalled packages except for the most recent five

cd $dotfile_directory
pacman -Qqe > packages/pkglist.txt # Export list of installed packages
if [ $(git status --short | wc -l) -ne 0 ]; then
  git add .
  git commit -am "Update dotfiles"
  git push -u origin main
  echo "Dotfiles pushed to GitHub"
fi
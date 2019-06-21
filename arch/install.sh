#!/bin/bash

echo 'Installing packages...'

sudo pacman -Syyuu -y
sudo pacman -S emacs -y
sudo pacman -S git -y
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
sudo pacman -S vim -y
sudo pacman -S opera -y
sudo pacman -S google-chrome-stable -y
sudo pacman -S dunst
cp -r ./.* ~/

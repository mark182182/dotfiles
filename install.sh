#!/bin/bash

echo 'Installing packages...'

sudo pacman -Syyuu -y
sudo pacman -S emacs -y
echo 'Spacemacs'
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
sudo pacman -S vim -y
sudo pacman -S opera -y
sudo pacman -S google-chrome-stable -y

#!/bin/bash
USERNAME=$1

echo 'Installing packages...'
sudo pacman -Syyuu --noconfirm
sudo pacman -S emacs --noconfirm
sudo pacman -S fish --noconfirm
sudo pacman -S opera --noconfirm
sudo pacman -S dunst --noconfirm
sudo pacman -S dwm --noconfirm
sudo pacman -S thunar --noconfirm
sudo pacman -S mc --noconfirm
sudo pacman -S refind-efi --noconfirm

echo 'Installing from github...'
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

echo 'Copying dotfiles...'
cp -r ./.* /home/$USERNAME/

echo 'Changing shell'
sudo chsh -s /usr/bin/fish $USERNAME

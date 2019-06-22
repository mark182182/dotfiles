#!/bin/bash
USERNAME=$1

echo 'Installing packages...'
sudo pacman -Syyuu --noconfirm
sudo pacman -S emacs --noconfirm
sudo pacman -S fish --noconfirm
sudo pacman -S opera --noconfirm
sudo pacman -S dunst --noconfirm
sudo pacman -S thunar --noconfirm
sudo pacman -S mc --noconfirm
sudo pacman -S refind-efi --noconfirm
sudo pacman -S dialog --noconfirm
sudo pacman -S xorg --noconfirm
sudo pacman -S dmenu
sudo pacman -S xorg-xinit --noconfirm
sudo pacman -S wpa_supplicant --noconfirm

echo 'Installing from github...'
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

echo 'Install window manager...'
yay -S dwm

echo 'Copying dotfiles...'
cp -r ./.* /home/$USERNAME/

echo 'Changing shell...'
sudo chsh -s /usr/bin/fish $USERNAME

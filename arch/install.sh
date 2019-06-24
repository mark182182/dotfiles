#!/bin/bash
USERNAME=$1

echo 'Installing packages...'
sudo pacman -Syyuu --noconfirm
sudo pacman -S emacs --noconfirm
sudo pacman -S fish --noconfirm
sudo pacman -S opera --noconfirm
sudo pacman -S opera-ffmpeg-codecs --noconfirm
sudo pacman -S dunst --noconfirm
sudo pacman -S thunar --noconfirm
sudo pacman -S mc --noconfirm
sudo pacman -S refind-efi --noconfirm
sudo pacman -S dialog --noconfirm
sudo pacman -S xorg --noconfirm
sudo pacman -S dmenu --noconfirm
sudo pacman -S xorg-xinit --noconfirm
sudo pacman -S wpa_supplicant --noconfirm
sudo pacman -S alsa-utils --noconfirm
sudo pacman -S termite --noconfirm
sudo pacman -S openssh --noconfirm
sudo pacman -S lxappearance --noconfirm
sudo pacman -S htop --noconfirm
sudo pacman -S code --noconfirm
sudo pacman -S ark --noconfirm
sudo pacman -S nodejs --noconfirm
sudo pacman -S yarn --noconfirm
sudo pacman -S npm --noconfirm
sudo pacman -S python-pip --noconfirm
sudo pacman -S docker --noconfirm
sudo pacman -S qbittorrent --noconfirm
sudo pacman -S gwenview --noconfirm
sudo pacman -S vlc --noconfirm
sudo pacman -S deepin-picker --noconfirm
sudo pacman -S deepin-screenshot --noconfirm
sudo pacman -S scrot --noconfirm

echo 'Installing from github...'
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

echo 'Install window manager...'
sudo pacman -S awesome --noconfirm
yay -S lighthouse-git

echo 'Changing X11 layout...'
setxkbmap hu

echo 'Copying dotfiles...'
cp -r ./.* /home/$USERNAME/

echo 'Changing shell...'
sudo chsh -s /usr/bin/fish $USERNAME

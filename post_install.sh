#!/bin/bash
sudo pacman -Syu
git config --global user.email ""
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ~

if [condition]
then
   paru -S nvidia nvidia-utils lib32-nvidia-utils nvidia-prime
   sudo bash -c "echo -n "ibt=off split_lock_detect=off" >> /boot/loader/entries/*" 
   # sudo pacman -S xf86-video-
else
   # statement2
fi

# Skip this step for vm
# 
sudo pacman -S xf86-video-vmware xorg-server xorg-xinit xorg-xsetroot base-devel
mkdir bin
cd bin
git clone https://aur.archlinux.org/st
git clone https://aur.archlinux.org/dwm


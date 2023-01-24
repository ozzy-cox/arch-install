
#!/bin/bash
sudo pacman -Syu
git config --global user.email ""
git clone https://aur.archlinux.org/paru.git /opt/paru
cd /opt/paru
makepkg -si
cd ~

git clone https://github.com/ozzy-cox/dotfiles.git /home/ozank/.dotfiles

#TODO install omz
#TODO install pyenv
#TODO install nvm

if [condition]
then
   paru -S nvidia nvidia-utils lib32-nvidia-utils nvidia-prime
   sudo bash -c "echo -n "ibt=off split_lock_detect=off" >> /boot/loader/entries/*" 
   # sudo pacman -S xf86-video-mesa
else
   # statement2
fi

# Skip this step for vm
# 
sudo pacman -S xf86-video-vmware xorg-server xorg-xinit xorg-xsetroot base-devel
mkdir bin
cd bin


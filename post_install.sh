
#!/bin/bash
sudo pacman -Syu
git config --global user.email "ozankoksal@hotmail.com"
git config --global user.name "ozank"

# pull dotfiles
git clone https://github.com/ozzy-cox/dotfiles.git /home/ozank/.dotfiles

# install paru
git clone https://aur.archlinux.org/paru.git /opt/paru
cd /opt/paru
makepkg -si
cd ~

# install omz
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install pyenv
curl https://pyenv.run | bash

# install nvm

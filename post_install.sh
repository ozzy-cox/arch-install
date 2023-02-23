
#!/bin/bash
sudo pacman -Syu
cd ~
git clone https://github.com/ozzy-cox/dotfiles.git

# install paru
git clone https://aur.archlinux.org/paru.git /opt/paru
makepkg -si

# install pyenv
curl https://pyenv.run | bash

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# install omz
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -s ~/dotfiles/zshrc ~/.zshrc
exec $SHELL

git config --global user.email "ozankoksal@hotmail.com"
git config --global user.name "ozank"



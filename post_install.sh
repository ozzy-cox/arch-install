
#!/bin/bash
sudo pacman -Syu

# install omz
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mv ~/arch-install/.zshrc ~
exec $SHELL

git config --global user.email "ozankoksal@hotmail.com"
git config --global user.name "ozank"

# install paru
git clone https://aur.archlinux.org/paru.git /opt/paru
makepkg -si

# install pyenv
curl https://pyenv.run | bash

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

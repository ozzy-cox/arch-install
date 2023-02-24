
#!/bin/bash
sudo pacman -Syu
cd ~
git clone https://github.com/ozzy-cox/dotfiles.git

# install paru
git clone https://aur.archlinux.org/paru.git /opt/paru
cd /opt/paru
makepkg -si
cd ~

# install pyenv
curl https://pyenv.run | bash

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# install omz
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -s ~/dotfiles/zshrc ~/.zshrc
exec $SHELL

ln -s ~/dotfiles/alacritty.yml ~/.alacritty.yml
ln -s ~/dotfiles/xinitrc ~/.xinitrc


paru -S nvidia nvidia-utils lib32-nvidia-utils nvidia-prime

git config --global credential.helper cache
git config --global user.email "ozankoksal@hotmail.com"
git config --global user.name "ozank"

# TODO automate adding ibt.. to launcher entries

paru -S visual-studio-code-bin
ln -s ~/dotfiles/vimrc ~/.config/Code/User/.vimrc

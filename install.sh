#!/bin/bash
echo "Installing icons"
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
cd ./WhiteSur-icon-theme
./install.sh -a

echo "Installing theme"
git clone https://github.com/vinceliuice/Lavanda-gtk-theme.git
cd ./Lavanda-gtk-theme
./install.sh

echo "Installing dependencies"
yay -S gtk-engine-murrine gnome-themes-extra -y

echo "Installing gnome extensions"
yay -S gnome-shell-extensions gnome-browser-connector -y

echo "Install Apps"
yay -S discord telegram-desktop steam obs-studio visual-studio-code-bin -y

echo "Installing extensions"
mv -f ./Extensions/* /home/nintys/.local/share/gnome-shell/extensions/

echo "Install OhMyZSH and theme"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
yay -S zsh-theme-powerlevel10k -y
echo 'source /usr/share/zsh-theme-powerlevel9k/powerlevel10k.zsh-theme' >> ~/.zshrc

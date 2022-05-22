#!/usr/bin/sh


sudo apt install tmux vim tilda zsh docker fonts-powerline curl htop chromium-browser
sudo snap install --classic code # or code-insiders



sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Setting agnoster to default ZSH theme"

cat configFiles/bash_aliases >> ~/.bash_aliases
cat configFiles/vimrc >> ~/.vimrc
sed -i "/ZSH_THEME/c\ZSH_THEME=\"agnoster\";d" ~/.zshrc
cat configFiles/zshrc >> ~/.zshrc

mkdir -p ~/.config/tilda
cp configFiles/tilda_config ~/.config/tilda/tilda_0

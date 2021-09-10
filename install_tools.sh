#!/usr/bin/sh


sudo apt install tmux vim tilda zsh docker fonts-powerline curl htop
sudo snap install --classic code # or code-insiders

echo "imap jk <esc> \n set number"  >> ~/.vimrc 


echo "You will manually have to set the theme to agnoster inside ~/.zshrc"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cat zshrc >> ~/.zshrc
cat bash_aliases >> ~/.bash_aliases

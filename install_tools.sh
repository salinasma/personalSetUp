#!/usr/bin/sh


sudo apt install tmux vim tilda zsh docker fonts-powerline curl htop chromium-browser
sudo snap install --classic code # or code-insiders

echo "imap jk <esc> \n set number \n iset hlsearch"  >> ~/.vimrc 


sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Setting agnoster to default ZSH theme"

cat zshrc >> ~/.zshrc
cat bash_aliases >> ~/.bash_aliases
sed -i "/ZSH_THEME/c\ZSH_THEME=\"agnoster\";d" ~/.zshrc
mkdir -p ~/.config/tilda
cp tilda_config ~/.config/tilda/tilda_0

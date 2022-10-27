#!/bin/bash
cd ~/

# Install zsh
sudo apt install zsh
chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

cd ~/
git clone git@github.com:joemafrici/dotfiles.git
mv ~/dotfiles/.vim ~/.vim
mv ~/dotfiles/.vimrc ~/.vimrc
mv ~/dotfiles/.zshrc ~/.zshrc

# Install dev tools
sudo apt-get update
sudo apt-get install build-essential

# Install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install vim airline
cd ~/.vim/bundle
git clone https://github.com/vim-airline/vim-airline

# Install vim colors solarized
cd ~/.vim/bundle
git clone https://github.com/altercation/vim-colors-solarized

# Install indent guides
cd ~/.vim/bundle
git clone https://github.com/nathanaelkane/vim-indent-guides

# Install Rainbow Parentheses Improved
cd ~/.vim/bundle
git clone git@github.com:luochen1990/rainbow.git



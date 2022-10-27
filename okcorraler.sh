#!/bin/bash

git clone git@github.com:joemafrici/dotfiles.git

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

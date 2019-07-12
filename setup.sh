#!/bin/bash

mkdir ~/.vim/
mkdir ~/.vim/autoload/
mkdir ~/.vim/bundle/

cp vimrc ~/.vim/
ln -s ~/.vim/vimrc ~/.vimrc

cd ~/.vim

sudo apt-get install curl

curl -o autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

git init
git submodule init
git submodule add https://github.com/morhetz/gruvbox.git bundle/gruvbox/
git submodule update

#!/bin/bash

ln -s ~/dotvim ~/.vim
ln -s ~/dotvim/vimrc ~/.vimrc

git submodule init
git submodule update

cd ~ && git clone https://github.com/powerline/fonts.git
cd fonts && ./install.sh
rm -rf ~/fonts

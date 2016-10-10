#!/bin/bash

DOT_FILES=(.vimrc .gvimrc .zshrc)

# rm files
rm -rf ~/.vimrc
rm -rf ~/.gvimrc
rm -rf ~/.zshrc

# symbolic link
for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done

# vim-plug install
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

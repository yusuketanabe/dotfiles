#!/bin/bash

DOT_FILES=(.vimrc .gvimrc .zshrc)
FISHES=(fish)

# rm files
rm -f ~/.vimrc
rm -f ~/.gvimrc
rm -f ~/.zshrc
rm -rf ~/.config/fish

# symbolic link
for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done

for dir in ${FISHES[@]}
do
  ln -s $HOME/dotfiles/$dir $HOME/.config/$dir
done

# vim-plug install
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# ログインシェル、デフォルトシェルをzshに変更。fishにしたければzsh >> fishにして。パスワード入力聞かれるよ。
# cat /etc/shellsで中身確認してみて。chshでデフォルトシェルも確認してみて。
echo /usr/local/bin/fish | sudo tee -a /etc/shells

chsh -s /usr/local/bin/fish

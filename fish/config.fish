## Rust
set -x PATH $HOME/.cargo/bin $PATH

## exercism
set -x PATH $HOME/Exercism/bin $PATH

## nodebrew
#set -x PATH $HOME/.nodebrew/current/bin $PATH

## rbenv
#set -x PATH $HOME/.rbenv/bin $PATH
#status --is-interactive; and source (rbenv init -| source)

## pyenv && brew install tcl-tk
set -Ux PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
pyenv init -| source

## SDKMAN -> /functions/sdk.fishに記載
# パスが通っていないので、SDKコマンドを一回でも実行しないとgradleコマンド使えないのでhelpコマンド実行すると。
sdk help > /dev/null

## ls color (man lsで確認して)
export LSCOLORS=hxfxcxdxbxegedabagacad

## gcc/g++
## clang使います。
## もし再度gcc使うならシンボリックリンク作成して使うこと。homebrewでgccインストールしてね。
## 注意：zsh用のコマンドなので書くときは調べて。
## 作成->ln -s /usr/local/bin/gcc-11 /usr/local/bin/gcc
##    or ln -s /usr/local/bin/g++-11 /usr/local/bin/g++
## 削除->unlink /usr/local/bin/gcc and unlink /usr/local/bin/g++
#set -x PATH ~/usr/local/bin $PATH

## goenv
#set -x PATH $HOME/.goenv/bin $PATH
# eval (goenv init - | source) fishでは下の書き方。$goenv initしたら下のように書いてくれと言われる。
#status --is-interactive; and source (goenv init -| source)
## go
# $GOROOTはGOのインストール先をデフォルトのまま使うなら書かない。
#set -x GOPATH $HOME/Try/go
#set -x PATH $GOPATH/bin $PATH

## Flutter
# other Shell export --PATH="$PATH:`pwd`/flutter/bin"--
#set -x PATH $HOME/WorkSpace/flutter/bin $PATH

## Starship Theme
## A Nerd Font installed and enabled in your terminal 
starship init fish | source
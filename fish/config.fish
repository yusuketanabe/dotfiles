## Rust
set -x PATH $HOME/.cargo/bin $PATH

## exercism
set -x PATH ~/bin $PATH

## nodebrew
set -x PATH $HOME/.nodebrew/current/bin $PATH

## pyenv
set -x PATH $HOME/.pyenv/bin $PATH
# eval (pyenv init - | source) fishでは下の書き方。$pyenv initしたら下のように書いてくれと言われる。
status --is-interactive; and source (pyenv init -|psub)

## SDKMAN -> /functions/sdk.fishに記載
# パスが通っていないので、SDKコマンドを一回でも実行しないとgradleコマンド使えないのでhelpコマンド実行すると。
sdk help > /dev/null

## theme
set fish_theme eden

## ls color (man lsで確認して)
export LSCOLORS=hxfxcxdxbxegedabagacad

## gcc/g++
set -x PATH ~/usr/local/bin $PATH

## goenv
set -x PATH $HOME/.goenv/bin $PATH
# eval (goenv init - | source) fishでは下の書き方。$goenv initしたら下のように書いてくれと言われる。
status --is-interactive; and source (goenv init -|psub)
## go
# $go get -v github.com/go-delve/delve/cmd/dlv Delve Debuggerをゲットする。
# パッケージを保管するところ。
set -x GOPATH $HOME/go
set -x PATH $GOPATH/bin $PATH
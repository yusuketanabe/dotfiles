## Rust
set -x PATH $HOME/.cargo/bin $PATH

## exercism
set -x PATH ~/bin $PATH

## nodebrew
set -x PATH $HOME/.nodebrew/current/bin $PATH

## pyenv
set -x PATH $HOME/.pyenv/bin $PATH
eval (pyenv init - | source)

## SDKMAN -> /functions/sdk.fishに記載
# パスが通っていないので、SDKコマンドを一回でも実行しないとgradleコマンド使えないのでhelpコマンド実行すると。
sdk help > /dev/null

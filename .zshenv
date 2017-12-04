## exercism
export PATH=~/bin:$PATH

## nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

## homebrew
#alias brew="env PATH=${PATH/\/Users\/U\/\.pyenv\/shims:/} brew"

## pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(pyenv init -)"

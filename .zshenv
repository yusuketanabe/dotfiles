## exercism
export PATH=~/bin:$PATH

## nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

## pyenv
export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"

eval "$(pyenv init -)"

## homebrew
alias brew="PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin brew"

#setopt no_global_rcs
#PATH="$HOME/bin"
## Rust
export PATH="$HOME/.cargo/bin:$PATH"

## exercism
export PATH="$HOME/Exercism/bin:$PATH"

## nobebrew
export PATH="$HOME/.nodebrew/current/bin:$PATH"

## nodebrew
#export NODEBREW_ROOT="$HOME/.nodebrew"
#export PATH="$NODEBREW_ROOT/current/bin:$PATH"

## rbenv
export RBENV_ROOT="$HOME/.rbenv"
export PATH="$RBENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(rbenv init -)"
fi

## pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

## condo activate <SHELL_NAME> <-> conda deactive
#source ~/opt/anaconda3/etc/profile.d/conda.sh

## ls color (man lsで確認して)
export LSCOLORS=hxfxcxdxbxegedabagacad

## gcc/g++
export PATH="/usr/local/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

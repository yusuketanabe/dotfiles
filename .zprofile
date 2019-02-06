## Rust
export PATH="$HOME/.cargo/bin:$PATH"

## exercism
export PATH=~/bin:$PATH

## nobebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

## pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

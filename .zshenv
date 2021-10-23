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

## gcc/g++
export PATH="/usr/local/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

## postgreSQL
export PGDATA=/usr/local/var/postgres

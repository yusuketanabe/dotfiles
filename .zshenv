#setopt no_global_rcs
#PATH="$HOME/bin"

## Rust
export PATH="$HOME/.cargo/bin:$PATH"

## exercism
export PATH="$HOME/Exercism/bin:$PATH"

## gcc/g++
## clang使います。
## もし再度gcc使うならシンボリックリンク作成して使うこと。homebrewでgccインストールしてね。
## 作成->ln -s /usr/local/bin/gcc-11 /usr/local/bin/gcc
##    or ln -s /usr/local/bin/g++-11 /usr/local/bin/g++
## 削除->unlink /usr/local/bin/gcc and unlink /usr/local/bin/g++
#export PATH="/usr/local/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


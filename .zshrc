#      ___________     ________
#     |_  /| ___| |__ /  __/ __|
#      / /_|___ |  _ \| |  ||__     
# [_] /____|____|_| |_|_|  \___|                              

### PATH -> zshenvにしたかったができなかった

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
eval "$(rbenv init -)"

## pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

## condo activate <SHELL_NAME> <-> conda deactive
# source ~/opt/anaconda3/etc/profile.d/conda.sh  # commented out by conda initialize

## ls color (man lsで確認して)
export LSCOLORS=hxfxcxdxbxegedabagacad

## gcc/g++
export PATH="/usr/local/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"



### General
autoload colors
autoload -Uz vcs_info
# cd -[tab]ディレクトリ履歴一覧表示
setopt auto_pushd

precmd() {
	vcs_info
}

### Prompt
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' formats '[%b%m%u%c]'
zstyle ':vcs_info:*' actionformats '[%b|%a]'
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{green}☺︎%f"
zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}☺︎%f"
setopt PROMPT_SUBST
PROMPT=$'\n''%F{blue}%1d${vcs_info_msg_0_}%#%f '

### History
# 保存先
HISTFILE=~/.zsh_history
# メモリに保存される件数
HISTSIZE=1000
# 履歴ファイルに保存される件数
SAVEHIST=10000
# 開始と終了を記録
setopt EXTENDED_HISTORY
# 時間を記録
setopt extended_history
# 直前と同じコマンドは記録しない
setopt hist_ignore_dups
# 重複するコマンドは古い方を削除する
setopt hist_ignore_all_dups
# 履歴を共有
setopt share_history
# カーソル位置が行末に
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

### Key
bindkey -v
bindkey "^p" history-beginning-search-backward-end
bindkey "^n" history-beginning-search-forward-end

### Completion 自動補完を有効
autoload -Uz compinit && compinit

### コマンドのスペルミスを修正
setopt correct

### Function of mkdir && cd
function mkcd(){
  mkdir $1
  cd $1
}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/U/.pyenv/versions/anaconda3-2020.07/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/U/.pyenv/versions/anaconda3-2020.07/etc/profile.d/conda.sh" ]; then
        . "/Users/U/.pyenv/versions/anaconda3-2020.07/etc/profile.d/conda.sh"
    else
        export PATH="/Users/U/.pyenv/versions/anaconda3-2020.07/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


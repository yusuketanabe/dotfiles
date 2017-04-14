#      ___________     ________
#     |_  /| ___| |__ /  __/ __|
#      / /_|___ |  _ \| |  ||__     
# [_] /____|____|_| |_|_|  \___|                              

## pyenv
export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"

eval "$(pyenv init -)"

## General
autoload colors && colors
autoload -Uz vcs_info
# cd -[tab]ディレクトリ履歴一覧表示
setopt auto_pushd

precmd() {
	vcs_info
}

## Prompt
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' formats '[%b%m%u%c]'
zstyle ':vcs_info:*' actionformats '[%b|%a]'
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{green}☺︎%f"
zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}☺︎%f"
setopt PROMPT_SUBST
PROMPT='%1d${vcs_info_msg_0_}%# '

## History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
# 時間を記録
setopt extended_history
# 重複を記録しない
setopt hist_ignore_dups
# 履歴を共有
setopt share_history
# カーソル位置が行末に
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

## Key
bindkey -v
bindkey "^p" history-beginning-search-backward-end
bindkey "^n" history-beginning-search-forward-end

## Completion 自動補完を有効
autoload -Uz compinit && compinit


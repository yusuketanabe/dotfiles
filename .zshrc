#    ___________     ________
#   |_  /| ___| |__ /  __/ __|
#    / /_|___ |  _ \| |  ||__
#[_]/____|____|_| |_|_|  \___|


autoload colors && colors
autoload -Uz vcs_info

precmd() {
	vcs_info
}

# Prompt
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' formats '[%b%m%u%c]'
zstyle ':vcs_info:*' actionformats '[%b|%a]'
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{green}*%f"
zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}*%f"
setopt PROMPT_SUBST
PROMPT='%1d${vcs_info_msg_0_}%# '

# Completion
autoload -Uz compinit && compinit

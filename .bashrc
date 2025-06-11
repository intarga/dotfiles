#!/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s autocd #Allows you to cd into directory merely by typing the directory name.

#Aliases
alias sdn="sudo shutdown now"
alias p='sudo pacman'
alias lsp="pacman -Qett --color=always | less"
alias ai="sudo apt install"
alias au="sudo apt update && sudo apt upgrade"
alias asn="apt search --names-only"
alias SS="sudo systemctl"
alias ka="killall"
alias ls='gls --color=auto --group-directories-first'
alias la='gls -A --color=auto --group-directories-first'
alias ll='gls -lsh --color=auto --group-directories-first'
alias v='nvim'
alias g='git'
alias ga='git add'
alias gl='git log --all --graph'
alias gs='git status'
alias gd='git diff'
alias kwifi='sudo killall wpa_supplicant'
alias wifi='sudo wpa_supplicant -B -i wlp3s0 -c /home/intarga/.config/wpa_supplicant/wtg71.conf'
alias tangocal='cd ~/go/src/gitlab.com/intarga/tangocal'
alias nb='npm run build'
alias tr='transmission-remote'
alias trwatch='~/scripts/trwatch.sh'
alias rs='redshift -l 59.9:10.7 -t 5700:3600 -g 0.8 -m randr -r &'
alias krs='killall redshift'
alias icat='kitty +kitten icat'
# alias e='hx'
alias e='HELIX_RUNTIME=${HOME}/etc/helix/runtime ${HOME}/etc/helix/target/release/hx'

#Prompt
export PS1="\[$(tput bold)\]\[$(tput setaf 2)\]\[$(tput setaf 1)\]\u\[$(tput setaf 4)\]@\[$(tput setaf 1)\]\h\[$(tput setaf 4)\]>\W\[$(tput setaf 1)\]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

export VISUAL=hx
export EDITOR="$VISUAL"

export PATH="${PATH}:${HOME}/.local/bin/"
export PATH="${PATH}:${HOME}/go/bin/"
export PATH="${PATH}:/opt/homebrew/opt/postgresql@16/bin/"
export PATH="${PATH}:${HOME}/toolchains/bin/"

export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";
. "$HOME/.cargo/env"

#Autocomplete
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
. "${HOME}/.complete_alias"
# if ! shopt -oq posix; then
#   if [ -f /usr/share/bash-completion/bash_completion ]; then
#     . /usr/share/bash-completion/bash_completion
#   elif [ -f /etc/bash_completion ]; then
#     . /etc/bash_completion
#   fi
# fi

export TERMINFO_DIRS="${TERMINFO_DIRS}:${HOME}/.local/share/terminfo"

# if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#   exec tmux
# fi

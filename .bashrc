#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s autocd #Allows you to cd into directory merely by typing the directory name.

#Aliases
alias sdn="sudo shutdown now"
alias p='sudo pacman'
alias lsp="pacman -Qett --color=always | less"
alias ai="sudo apt install"
alias asn="apt search --names-only"
alias SS="sudo systemctl"
alias ka="killall"
alias ls='ls --color=auto --group-directories-first'
alias la='ls -A --color=auto --group-directories-first'
alias ll='ls -lsh --color=auto --group-directories-first'
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

#Aliases Pexip
alias vpn-connect='sudo vpnc /etc/vpnc/pexipfortinetvpnuk.conf'
alias vpn-disconnect='sudo vpnc-disconnect'

#Prompt
export PS1="\[$(tput bold)\]\[$(tput setaf 2)\]\[$(tput setaf 1)\]\u\[$(tput setaf 4)\]@\[$(tput setaf 1)\]\h\[$(tput setaf 4)\]>\W\[$(tput setaf 1)\]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

export VISUAL=nvim
export EDITOR="$VISUAL"

export PATH="${PATH}:${HOME}/.local/bin/"

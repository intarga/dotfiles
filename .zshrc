# Created by newuser for 5.8

PROMPT="%B%F{red}%n%F{blue}@%F{red}%m%F{blue}>%~%F{white}$%b "

#Options
setopt autocd
setopt interactive_comments

#Completion
autoload -U compinit
zstyle ':completion:*' menu select
compinit
#Smartcase
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'

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

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history

autoload -U colors && colors	# Load colors

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
#bindkey -M menuselect 'h' vi-backward-char
#bindkey -M menuselect 'k' vi-up-line-or-history
#bindkey -M menuselect 'l' vi-forward-char
#bindkey -M menuselect 'j' vi-down-line-or-history
#bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

#Environment Variables
export VISUAL=nvim
export EDITOR="$VISUAL"

export PATH="${PATH}:/usr/local/go/bin"
export PATH="${PATH}:${HOME}/.local/bin/"
export PATH="${PATH}:${HOME}/go/bin/"

source "$HOME/.cargo/env"

#Extensions
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

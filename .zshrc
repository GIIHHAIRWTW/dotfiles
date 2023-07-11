#  __  ____   ___________  _   _ ____   ____
# |  \/  \ \ / /__  / ___|| | | |  _ \ / ___|
# | |\/| |\ V /  / /\___ \| |_| | |_) | |
# | |  | | | |  / /_ ___) |  _  |  _ <| |___
# |_|  |_| |_| /____|____/|_| |_|_| \_\\____|
#

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/Haotian/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# User configuration
# Example aliases
# alias zshconfig="mate ~/.zshrc"
alias apu="sudo ifconfig ap0 up"
alias apd="sudo ifconfig ap0 down"
alias c="clear"
alias cls="c && ll"
alias cC="sudo rm -rf ~/.cache/*"
alias ct="cd ~/tmp"
alias cip="curl cip.cc"
alias cy="curl -vv www.youtube.com"
alias cr="cargo run"
alias cb="cargo build"
alias du="du -h"
alias dir="dir --color=auto"
alias dk="docker"
alias gh="cd ~ && clear"
alias grep="grep --color=auto"
alias gl="git clone"
alias glog="git log --pretty=oneline --all --graph --abbrev-commit"
alias gs="git status"
alias 'git log'="git log --all --graph --decorate"
alias ga="git add"
alias gc="git commit -m"
alias gd="git diff"
alias gp="git push"
alias gpl="git pull"
alias gac="git add .&&git commit -m"
# alias j="joshuto"
alias ls="ls --color=auto"
alias ll="ls -al --color=auto"
alias ne="neofetch | lolcat"
alias n="neofetch"
alias nv="nvim"
alias ss="systemctl status"
alias sd="systemctl disable"
alias se="systemctl enable"
alias sst="systemctl start"
alias srt="systemctl restart"
alias ssp="systemctl stop"
alias sz="source ~/.zshrc"
alias snv="sudo vim"
alias u="yay"
alias up="cd .."
alias yc="yay -Scc"

# export PICO_SDK_PATH="/opt/mylib/pico-sdk"
export PATH=$PATH:/home/Haotian/.cargo/bin

# Set Terminal's language
export LANGUAGE=en_US 
export LANG=en_US.UTF-8 

# Auto change dir---ranger
ra() {
    temp_file="$(mktemp -t "ranger_cd.XXXXXXXXXX")"
    ranger --choosedir="$temp_file" -- "${@:-$PWD}"
    if chosen_dir="$(cat -- "$temp_file")" && [ -n "$chosen_dir" ] && [ "$chosen_dir" != "$PWD" ]; then
        cd -- "$chosen_dir"
    fi
    rm -f -- "$temp_file"
}

gacp() {
    git add "$1" && git commit -m "$2" && git push
}

# Make dir and cd
mcd() {
    mkdir -p "$1"
    cd "$1"
}

# source plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/autojump/autojump.zsh
# source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
# eval $(thefuck --alias)
# alias fk="fuck"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

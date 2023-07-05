if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
	git
	zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

# User configuration

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias sz="source ~/.zshrc"
alias ll="ls -al"
alias ne="neofetch | lolcat"
alias n="neofetch"
alias c="clear"
alias cls="c && ll"
alias u="yay"
alias gh="cd ~ && clear"
alias cC="sudo rm -rf ~/.cache/*"
alias yc="yay -Scc"
alias du="du -h"
alias up="cd .."
alias cip="curl cip.cc"
alias cy="curl -vv www.youtube.com"

alias grep="grep --color=auto"

alias glog="git log --pretty=oneline --all --graph --abbrev-commit"
alias gis="git status"
alias 'git log'="git log --all --graph --decorate"
alias gc="git add .&&git commit -m"

alias dk="docker"
# alias j="joshuto"
alias nv="nvim"
alias snv="sudo vim"
alias apu="sudo ifconfig ap0 up"
alias apd="sudo ifconfig ap0 down"

alias ss="systemctl status"
alias sd="systemctl disable"
alias se="systemctl enable"
alias sst="systemctl start"
alias srt="systemctl restart"
alias ssp="systemctl stop"

# export PICO_SDK_PATH="/opt/mylib/pico-sdk"

# Auto change dir---ranger
ra() {
    temp_file="$(mktemp -t "ranger_cd.XXXXXXXXXX")"
    ranger --choosedir="$temp_file" -- "${@:-$PWD}"
    if chosen_dir="$(cat -- "$temp_file")" && [ -n "$chosen_dir" ] && [ "$chosen_dir" != "$PWD" ]; then
        cd -- "$chosen_dir"
    fi
    rm -f -- "$temp_file"
}

# Make dir and cd
mcd() {
    mkdir -p "$1"
    cd "$1"
}

# source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source /home/Haotian/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# eval $(thefuck --alias)
# alias fk="fuck"

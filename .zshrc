# global variables
export STARSHIP_CONFIG="/home/yan/.config/starship/starship.toml"
export WALLPAPERS="/home/yan/.local/share/wallpapers"
export LS_COLORS="ow=01;37:di=01;37:ex=01;32:*.png=01;30:*.svg=01;30:*.jpeg=01;30:*.jpg=01;30"

#binds -- see command zle -al -- cat to find keycode
bindkey "^[[3~" delete-char
bindkey "^[[3;5~" delete-word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey '^H' backward-kill-word

# aliases
alias land=''
alias ls='ls --color=auto -F'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -c=auto'
alias tree='tree -F'
alias rg='rg --color=auto'
alias cls='clear'
alias py='python3'
alias asciiquarium='asciiquarium -t -s'
alias rl='~/rustlings/target/release/rustlings'

# custom commands
mkcd() {
    mkdir -p "$1" && cd "$1" || return
}

airpods() {
    case $1 in
        on)
            echo "Connecting AirPods..."
            bluetoothctl connect F0:D3:1F:79:DA:27
            ;;
        off)
            echo "Disconnecting AirPods..."
            bluetoothctl disconnect F0:D3:1F:79:DA:27
            ;;
        *)
            echo "Usage: airpods [on|off]"
            ;;
    esac
}


# pfetch variables
export PF_INFO="ascii title os kernel shell wm uptime pkgs memory"
export PF_COL3=4 # Color for info names
export PF_COL2=9 # Color for info data
export PF_COL1=6 # Color for title
autoload -U promptinit && promptinit=6

# unset
unsetopt beep # disable beep on completion when pressing TAB

# init starship
eval "$(starship init zsh)"

# zsh history
SAVEHIST=1000 # save 1000 most-recent lines
HISTFILE="/home/yan/.zsh_history"

# zsh plugins
source "/home/yan/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
# custom highlight : see https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#3b6c80,underline'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#c47fd5,underline'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=#3b6c80'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#8ccf7e'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#8ccf7e'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#c47fd5'


source "/home/yan/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#4a4a4a'

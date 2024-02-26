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
alias ls='ls --color=auto -F'
alias tree='tree -F'
alias cls='clear'
alias py='python3'
alias wf-recorder='wf-recorder -c mkv --file=recording.mkv'
alias asciiquarium='asciiquarium -t -s'

# custom commands
mkcd() {
    mkdir -p "$1" && cd "$1" || return
}

# pfetch variables
export PF_INFO="ascii title os kernel shell wm uptime pkgs memory"
export PF_COL3=4 # Color for info names
export PF_COL2=9 # Color for info data
export PF_COL1
autoload -U promptinit && promptinit=6 # Color for title

# unset
unsetopt beep # disable beep on completion when pressing TAB

# init starship
eval "$(starship init zsh)"

# zsh history
SAVEHIST=1000 # save 1000 most-recent lines
HISTFILE="/home/yan/.zsh_history"

# zsh plugins
source "/home/yan/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#8abdb6,underline'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#8abdb6,underline'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=#8abdb6'
source "/home/yan/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#4a4a4a'


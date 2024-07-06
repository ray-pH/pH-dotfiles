# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory
command_not_found_handler() {
    echo "command not found"
    command-not-found $@
}

# Use emacs keybindings even if our EDITOR is set to vi
# bindkey -e
# Default to Nvim
export VISUAL=nvim
export EDITOR=nvim

# python
export PYTHONSTARTUP=~/.pystart

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000000
SAVEHIST=1000000
HISTIGNORE="ls:ps:history:j *"
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

bindkey "^E" _expand_alias

# ls coloring
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
# Media folder color
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

# more aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Tab autocomplete binding
# \e is escape sequence
bindkey '\eOA' history-beginning-search-backward
bindkey '\eOB' history-beginning-search-forward

# word traversal
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# functions
function yy(){
    readlink -fn "$1" | wl-copy
}

# ssh
if [ -z "$SSH_AUTH_SOCK" ]; then
  eval `ssh-agent -s` > /dev/null
fi

# theme
source ~/App/zsh/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# OSC7 escape sequence
autoload -U add-zsh-hook

update_terminal_cwd() {
    local url_path="${PWD// /%20}"
    print -Pn "\e]7;file://$HOSTNAME$url_path\a"
}

add-zsh-hook chpwd update_terminal_cwd
update_terminal_cwd # initial call

# bun completions
[ -s "/home/ray/.bun/_bun" ] && source "/home/ray/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

#flutter
export PATH="$HOME/App/flutter/bin:$PATH"
export PATH="$PATH":"$HOME/.pub-cache/bin"

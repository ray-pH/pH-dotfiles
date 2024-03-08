
# Set up the prompt

autoload -Uz promptinit
promptinit
. ~/.zsh_prompt

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
HISTSIZE=100000
SAVEHIST=100000
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
# zstyle ':completion:*:hosts' hidden true
# ignore completion of hosts
# zstyle ':completion:*:hosts' ignored-patterns '*(.|:)*'
zstyle ':completion:*:hosts' ignored-patterns '*'


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

# autojump
[[ -s /home/ray/.autojump/etc/profile.d/autojump.sh ]] && source /home/ray/.autojump/etc/profile.d/autojump.sh


# PATH
#dotnet
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools
# deno
export DENO_INSTALL="/home/ray/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH=/home/ray/.local/bin:/sbin:/usr/sbin:$PATH
#cargo
. "$HOME/.cargo/env"

# functions
function yy(){
    readlink -fn "$1" | xclip -selection c
}
#joshuto
function joshuto() {
    ID="$$"
    mkdir -p /tmp/$USER
    OUTPUT_FILE="/tmp/$USER/joshuto-cwd-$ID"
    env joshuto --output-file "$OUTPUT_FILE" $@
    exit_code=$?

    case "$exit_code" in
        # regular exit
        0)
            ;;
        # output contains current directory
        101)
            JOSHUTO_CWD=$(cat "$OUTPUT_FILE")
            cd "$JOSHUTO_CWD"
            ;;
        # output selected files
        102)
            ;;
        *)
            echo "Exit code: $exit_code"
            ;;
    esac
}

[ -f "/home/ray/.ghcup/env" ] && source "/home/ray/.ghcup/env" # ghcup-env

# bun completions
[ -s "/home/ray/.bun/_bun" ] && source "/home/ray/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pmy
# PMY_TRIGGER_KEY='^I' # tab
PMY_TRIGGER_KEY='^[[Z' # shift tab
eval "$(pmy init)"
export MODULAR_HOME="/home/ray/.modular"
export PATH="/home/ray/.modular/pkg/packages.modular.com_mojo/bin:$PATH"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# eval "$(zoxide init zsh)"

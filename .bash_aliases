# Abbreviations
alias python='python3'
alias py='python'
alias rg='ranger'
alias jn='jupyter-notebook'
alias vim='nvim'
alias v='nvim'
alias nn='nnn'
alias vtex='nvim *.tex'
alias lsv='ls -v'
alias qq='exit'
alias :q='exit'
alias jadwal='sxiv ~/Pictures/jadwal.png'
alias ca='bat --paging=never'
alias ba='bat --paging=never'
alias webc='mpv /dev/video0 --profile=low-latency --untimed --vf=hflip'

# Typos
alias sl='ls'

# Program Abbrev
alias marktext='~/AppImage/marktext-x86_64.AppImage'
alias mcc='java -jar ~/App/TLauncher/TLauncher-2.72.jar'
alias pde='~/App/processing-3.5.4/processing-java'
alias pdfshrink='~/Documents/shell/shrinkpdf.sh"$@"'
alias fpc='~/.fpc-3.2.0/lib/fpc/3.2.0/ppcx64'
alias godot='~/App/Godot/Godot_v3.2.3-stable_x11.64'
alias genact='~/App/genact/genact-v0.10.0-linux-x86_64'
alias pdftotext2='~/App/xpdf-tools-linux-4.03/bin64/pdftotext'

# Config File Edit
alias vv='nvim ~/.vim/init.vim'
alias vb='nvim ~/.bashrc'
alias vba='nvim ~/.bash_aliases'
alias vbp='nvim ~/.bash_prompt'
alias vi3='nvim ~/.config/i3/config'
alias vcom='nvim ~/.config/picom.conf'
alias vpoly='nvim ~/.config/polybar/config'
alias vala='nvim ~/.config/alacritty/alacritty.yml'
alias vfi='nvim ./.folderinfo'
alias vj='nvim ~/.local/share/autojump/autojump.txt'
alias vc='nvim /media/ray/STUFF/Texts/Linux/linux.md'
alias vlinux='vc'
alias blinux='bat /media/ray/STUFF/Texts/Linux/linux.md'
# alias vtex='nvim ~/Code/LaTeX/sketchboard/sketch.tex'

# Commands
alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"
alias libreconv='echo "libreoffice4.2 --headless --convert-to pdf  myfile.odt"'
alias dirsize='sudo du -h --max-depth=1 . | sort -rh'
alias xbright='xrandr --output eDP --brightness'
alias powersleep='systemctl suspend'
alias setwallp='feh --bg-fill'
alias autoclick='xdotool click --delay 500 --repeat 1000 1'
#     v4l2-ctl --list-devices
alias webcprep='sudo modprobe v4l2loopback video_nr=10 card_label="OBS Video Source" exclusive_caps=1'

# Ping
alias P='~/Documents/shell/prettyping.sh --nolegend 8.8.8.8'
alias p='ping 8.8.8.8'
alias pii='speedometer -r wlp1s0'

# nmcli
alias ncp='nmcli con up pH'
alias ncv='nmcli con up VELIMO'

# Update and Packages
alias uu='sudo apt update'
alias uul='sudo apt list --upgradable'
alias uug='sudo apt upgrade'
# alias appsize="dpkg-query -W -f=\"${Installed\-Size;8}  ${Package}\n\" | sort -n"

# Files
alias dfsda='df -BM /dev/sda{1,2,3,4,5,6}'
alias cstuff='cd /media/ray/STUFF'
alias cdata='cd /media/ray/DATA'

# Git
alias gitlog1="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gitlog2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias sshgit="ssh-add ~/.ssh/github"
alias gitssh="ssh-add ~/.ssh/github"
alias cfg="git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias gitpu="git push -u origin main"
alias gpu="git push -u origin main"

# Obscura
alias sus="cat ~/Documents/shell/sus"

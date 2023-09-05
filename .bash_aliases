# Abbreviations
alias python='python3'
alias py='python'
alias rg='ranger'
alias jo='joshuto'
alias jn='jupyter-notebook'
alias vim='nvim'
alias v='nvim'
alias nv='neovide'
alias nn='nnn'
alias vtex='nvim *.tex'
alias lsv='ls -v'
alias qq='exit'
alias :q='exit'
alias ca='batcat --paging=never'
alias ba='batcat --paging=never'
alias vimv='vimv -v'
alias vidir='vidir -verbose'
alias vdd='vidir -verbose '
alias vsd='/usr/bin/vd'
# alias vd='edir --suffix .edir'
alias v.='vim .'
alias dg='dragon -x *'
alias sx='sxiv *.jpg *.png *.jpeg'
alias speedtest='speedtest --bytes'
alias bmon="bmon -p 'wlp*'"
alias ros-source="source /opt/ros/noetic/setup.bash"
alias cp="rsync -ah --progress"
alias v2='nvim -u ~/.config/nvim2/init.vim'
alias vk='nvim -u ~/.config/kickstart-nvim/init.lua'

# Typos
alias sl='ls'

# Program Rename
alias mcc='java -jar ~/App/TLauncher/TLauncher-2.72.jar'
alias pdfshrink='~/Documents/shell/shrinkpdf.sh"$@"'
alias fpc='~/.fpc-3.2.0/lib/fpc/3.2.0/ppcx64'
alias pdftotext2='~/App/xpdf-tools-linux-4.03/bin64/pdftotext'
alias ffmpeg-pb='ffpb'
alias audio-setting='pavucontrol'
alias webc='mpv /dev/video0 --profile=low-latency --untimed --vf=hflip'
alias jadwal='sxiv ~/Pictures/jadwal.png'
alias python-http='python -m http.server'
alias py-http='python -m http.server'
alias font-list='fc-list'
alias diff-color='icdiff'
alias cal='ncal -C'

# Config File Edit
# alias vv='nvim ~/.vim/init.vim'
alias vv='nvim ~/.vim/init.lua'
alias vb='nvim ~/.bashrc'
alias vz='nvim ~/.zshrc'
alias vba='nvim ~/.bash_aliases'
alias vbp='nvim ~/.bash_prompt'
alias vi3='nvim ~/.config/i3/config'
alias vsway='nvim ~/.config/sway/config'
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
alias obs-webcprep='sudo modprobe v4l2loopback video_nr=10 card_label="OBS Video Source" exclusive_caps=1'
alias sshpi='ssh -p 3022 pi@localhost'
alias picom-restart='picom --backend glx &'
alias compositor-restart='picom --experimental-backends --backend glx &'
alias xclip-png='xclip -selection clipboard -t image/png -o'
alias mvd="ls -c ~/Downloads | fzf | sed 's/^/\"\/home\/ray\/Downloads\//;s/$/\"/' | xargs mv --target-directory=."
alias gittoken-clip='xclip -sel c < ~/Documents/shell/gittoken'

# Ping
alias P='~/Documents/shell/prettyping.sh --nolegend 8.8.8.8'
alias p='ping 8.8.8.8'
alias pii='speedometer -r wlp1s0'

# nmcli
alias ncp='nmcli con up pH'
alias ncv='nmcli con up VELIMO'
alias nct='nmcli con up "Thorium Room"'
alias ncu='nmcli con up UGM-Hotspot'


# Update and Packages
alias uu='sudo apt update'
alias uul='sudo apt list --upgradable'
alias uug='sudo apt upgrade'
alias uud='sudo apt upgrade --download-only'
# alias appsize="dpkg-query -W -f=\"${Installed\-Size;8}  ${Package}\n\" | sort -n"

# Files
# alias dfsda='df -BM /dev/sda{1,2,3,4,5,6}'
alias dfsda='df -BM /dev/sda{5,2,1,3,4,6,9}'
alias cstuff='cd /media/ray/STUFF'
alias cadd='cd /media/ray/ADDITION'
alias cdata='cd /media/ray/DATA'
# alias cugm='cd /media/ray/DATA/Data/UGM/'
alias cugm='cd ~/Data/UGM'
alias cmicro='cd /media/ray/DATA/Data/UGM/Semester6/Mikroreaktor/'
alias cwin='cd /media/ray/ADDITION/VM/Win10/sharedFolder/'

# Check Systems
alias modelcheck='sudo dmidecode -t 1'
alias memcheck='sudo dmidecode -t memory'
alias memlist='sudo lshw -short -C memory'

# Git
alias gitlog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gitlog1="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gitlog2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias sshgit="ssh-add ~/.ssh/github"
alias gitssh="ssh-add ~/.ssh/github"
alias sshand="ssh-add ~/.ssh/andangXeon"
alias andssh="ssh-add ~/.ssh/andangXeon"
alias cfg="git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias cfgupdate="cfg add -u"
alias gp="git push"

# Environment
alias env-openmc='source ~/Code/openmc/openmc_env/bin/activate'
# alias wine32='WINEPREFIX=/home/ray/.local/share/wineprefixes/Win32 wine'
alias wine32='WINEPREFIX=/media/ray/ADDITION/wineprefixes/Win32 wine'

#sleep
alias nosleep='xset s off -dpms'
alias nosleep-reset='xset s on +dpms'


# Themeing
alias QT-notheme='export QT_QPA_PLATFORMTHEME='

# Obscura
alias sus="cat ~/Documents/shell/sus"
alias owo="echo uwu"
alias uwu="echo owo"

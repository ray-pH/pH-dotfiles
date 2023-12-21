#!/usr/bin/env bash

set -xe
cp ~/.bash_aliases .
cp ~/.bash_prompt .
cp ~/.bashrc .
cp ~/.ghc/ghci.conf ./.ghc/ghci.conf
cp ~/.profile .
cp ~/.pystart .
cp ~/.Xresources .
cp ~/.xsession .
cp ~/.zsh_prompt .
cp ~/.zshrc .

# config
cp ~/.config/alacritty/alacritty.yml ./.config/alacritty/alacritty.yml
cp ~/.config/i3/config ./.config/i3/config
cp ~/.config/joshuto/* ./.config/joshuto/
cp ~/.config/picom.conf ./.config/picom.conf
cp ~/.config/polybar/* ./.config/polybar/ -r
cp -r ~/.config/nvim/ ./.config/

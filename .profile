# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "/usr/local/bin" ] ; then
    PATH="/usr/local/bin:$PATH"
fi
if [ -d "/usr/sbin" ] ; then
    PATH="/usr/sbin:$PATH"
fi
. "$HOME/.cargo/env"

# Kvantum Override
export QT_STYLE_OVERRIDE=kvantum-dark
# export QT_QPA_PLATFORMTHEME=kvantum
export LIBVIRT_DEFAULT_URI="qemu:///system"

# Wayland
# export SDL_VIDEODRIVER=wayland
# export _JAVA_AWT_WM_NONREPARENTING=1
# export QT_QPA_PLATFORM=wayland
# export XDG_CURRENT_DESKTOP=sway
# export XDG_SESSION_DESKTOP=sway

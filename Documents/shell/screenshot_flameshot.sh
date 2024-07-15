#! /usr/bin/bash
set -xe

QT_QPA_PLATFORM=wayland XDG_CURRENT_DESKTOP=sway flameshot gui --raw | wl-copy
# flameshot gui
# Exec=env QT_QPA_PLATFORM=xcb flameshot gui
# grim -g "$(slurp)" - | wl-copy
# geo="$(slurp)"; sleep 5; grim -g "$geo" out.png

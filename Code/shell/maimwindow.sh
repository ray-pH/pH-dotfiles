#! /bin/sh

maim -Bu -i $(xdotool getactivewindow) | xclip -selection clipboard -t image/png \
    && notify-send 'Maim Info' 'copied to clipboard'

#! /bin/sh

maim -Bu -i $(xdotool getactivewindow) | xclip -selection clipboard -t image/png \
    && notify-send 'maim info' 'copied to clipboard'

#!/bin/bash
rofi \
    -show window  \
    -kb-cancel "Alt+Escape,Escape" \
    -kb-accept-entry "!Alt-Tab,Return"\
    -kb-row-down "Alt+Tab,Alt+Down" \
    -kb-row-up "Alt+Shift+Tab,Alt+Up"&
xdotool keyup Tab
xdotool keydown Tab

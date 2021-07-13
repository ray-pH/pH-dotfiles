#! /bin/sh

rofi -show calc -theme glue_pro_blue -modi calc -no-show-match -no-sort -calc-command "echo -n '{result}' | xclip -selection clipboard"

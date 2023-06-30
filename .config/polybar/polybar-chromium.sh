#! /bin/bash


# title=$(playerctl metadata title &>/dev/null)
# artist=$(playerctl metadata artist >/dev/null)
if [[ $(playerctl -i kdeconnect -l &> /dev/null | wc -l) ]]
then
    # status=$(playerctl status)
    if [[ $(playerctl status) != "Stopped" ]]
    then
        title=$(playerctl metadata title)
        artist=$(playerctl metadata artist)
        # [[ ! -z $title ]] && echo "$title - $artist"
        echo "$title - $artist"
    else
        echo ""
    fi
fi



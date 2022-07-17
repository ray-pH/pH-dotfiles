#! /bin/bash

title=$(playerctl --player=youtube-music metadata title)
artist=$(playerctl --player=youtube-music metadata artist)
echo "$title - $artist"



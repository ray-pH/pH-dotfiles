#! /bin/sh
#
# cmus.sh
# Copyright (C) 2021 ray <ray@ray-pH-ASUS>
#
# Distributed under terms of the MIT license.
#

# konsole --noclose -i -e "echo $'\033]30;cmus\007' && cmus"
# konsole -e bash -c "echo $'\033]30;cmus\007' && cmus" &
# konsole -name cmus -e cmus &
alacritty --class cmus -o font.offset.y=0 -e cmus &

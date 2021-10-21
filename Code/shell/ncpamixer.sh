#! /bin/sh
#
# ncpamixer.sh
# Copyright (C) 2021 ray <ray@ray-pH-ASUS>
#
# Distributed under terms of the MIT license.
#

alacritty --class ncpamixer -o font.offset.x=-1 background_opacity=0.97 colors.primary.background="'#111111'" -e ncpamixer &

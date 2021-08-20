#! /bin/sh
#
# cmus.sh
# Copyright (C) 2021 ray <ray@ray-pH-ASUS>
#
# Distributed under terms of the MIT license.
#

# use --class cmus so that i3 can configure workspace using [instance="cmus"]
alacritty --class cmus -o font.offset.y=0 -e cmus &

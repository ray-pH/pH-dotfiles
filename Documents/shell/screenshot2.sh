#!/bin/bash

# source: https://github.com/emersion/slurp/issues/43#issuecomment-643478678
if pidof -o %PPID -x "$0"; then
  exit 0
fi

screenshot="$(mktemp --suffix screenshot.ppm)"
grim -t ppm "${screenshot}"
imv "${screenshot}" &
imv_pid=$!

while [ -z "$(swaymsg -t get_tree | grep imv)" ]; do
  continue
done

convert -crop "$(slurp -d | perl -ne '/(\d+),(\d+) (.+)/;print"$3+$1+$2"')" "${screenshot}" png:- | wl-copy -t image/png
kill -SIGKILL ${imv_pid}
rm "${screenshot}"

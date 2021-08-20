#! /bin/sh
#

raw_config_path="/tmp/heheconf"

echo "
[general]
bars = 10

[output]
method = raw
data_format = ascii
ascii_max_range = 7
" > $raw_config_path

cava -p $raw_config_path

#! /bin/bash

bar="▁▂▃▄▅▆▇█"
dict="s/;//g;"

# creating "dictionary" to replace char with bar
i=0
while [ $i -lt ${#bar} ]
do
    dict="${dict}s/$i/${bar:$i:1}/g;"
    i=$((i=i+1))
done

path=/tmp/testt
# convert numerical value to bars
# cava -p $HOME/.config/polybar/trash/test_config > $path
cava -p $HOME/.config/polybar/trash/test_config | sed $dict
# while read -r cmd; do
    # echo $cmd | sed $dict

# done < $path


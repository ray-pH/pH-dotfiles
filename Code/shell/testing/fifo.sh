#! /bin/bash

# make sure to clean pipe
pipe="/tmp/test.fifo"
if [ -p $pipe ]; then
    echo "ex"
    unlink $pipe
fi
mkfifo $pipe

# reading data from fifo
while read -r cmd; do
    echo $cmd | sed $dict
done <"$pipe"

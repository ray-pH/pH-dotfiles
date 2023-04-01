#! /bin/sh

if [ -d "/media/ray/STUFF" ] 
    then
        echo "stuff"
    else
        echo "nostuff"
        mkdir -p /media/ray/STUFF
        mount /dev/sda6 /media/ray/STUFF
fi
if [ -d "/media/ray/DATA" ] 
    then
        echo "data"
    else
        echo "nodata"
        mkdir -p /media/ray/DATA
        mount /dev/sda4 /media/ray/DATA
fi
if [ -d "/media/ray/WINDOWS" ] 
    then
        echo "win"
    else
        echo "nowin"
        mkdir -p /media/ray/WINDOWS
        mount /dev/sda3 /media/ray/WINDOWS
fi
# mkdir /media/ray/DATA
# mkdir /media/ray/
# mount 

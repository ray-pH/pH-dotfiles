#! /bin/sh

mkdir -p /media/ray/STUFF
mount /dev/disk/by-id/ata-TOSHIBA_MQ04ABF100_98GPPAYRT-part6 /media/ray/STUFF -o lazytime,big_writes
# mount /dev/sda6 /media/ray/STUFF -o lazytime,big_writes

mkdir -p /media/ray/DATA
mount /dev/disk/by-id/ata-TOSHIBA_MQ04ABF100_98GPPAYRT-part4 /media/ray/DATA -o lazytime,big_writes
# mount /dev/sda4 /media/ray/DATA -o lazytime,big_writes

mkdir -p /media/ray/WINDOWS
mount /dev/disk/by-id/ata-TOSHIBA_MQ04ABF100_98GPPAYRT-part3 /media/ray/WINDOWS -o lazytime,big_writes
# mount /dev/sda3 /media/ray/WINDOWS -o lazytime,big_writes

mkdir -p /media/ray/ADDITION
mount /dev/disk/by-id/ata-TOSHIBA_MQ04ABF100_98GPPAYRT-part9 /media/ray/ADDITION
# mount /dev/sda9 /media/ray/ADDITION

mkdir -p /media/ray/UBUNTU
mount /dev/disk/by-id/ata-TOSHIBA_MQ04ABF100_98GPPAYRT-part5 /media/ray/UBUNTU
# mount /dev/sda5 /media/ray/UBUNTU

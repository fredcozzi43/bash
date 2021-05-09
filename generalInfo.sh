#!/bin/bash

ip=$(ipconfig getifaddr en0)
pwd=$(pwd)


echo "Your IP Address is: $ip"
echo "Your current directory is: $pwd"

read -n1 -p "PING? [Y/N]" doit
case $doit in
    y|Y) ping -c 5 $ip ;;
    n|N) echo "" ;;
    *) echo "" ;;
esac

for ((i=100; i<256; i++)); do
    ip=192.168.1.$i
    ping -c 1 -s 1 $ip
done
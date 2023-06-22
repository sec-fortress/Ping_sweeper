#!/bin/bash

if [ "$1" == "" ]
then
echo "You forgot an IP address!"
echo "Syntax: ./ipsweep.sh 192.168.7" 
echo "//xD"

else
for host in `seq 1 254`; do
ping -c 1 $1.$host | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi

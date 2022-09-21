#!/usr/bin/bash
if [ ! -z $1 ]
then
DATE=`date +"%D %T"`
echo "$DATE $1" >> /home/casey/Documents/bash\ scripts/myevents
#cat ./myevents
else
    FILE=/home/casey/Documents/bash\ scripts/myevents.conf
    if [ -f "$FILE" ]
    then
    n=`cat /home/casey/Documents/bash\ scripts/myevents.conf`
    tail -n "${n}" /home/casey/Documents/bash\ scripts/myevents
    else
    tail -n 7 /home/casey/Documents/bash\ scripts/myevents
    fi
fi

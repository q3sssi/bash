#!/usr/bin/bash
if [ ! -z $1 ]
then
DATE=`date +"%D %T"`
echo "$DATE $1" >> ./myevents
cat ./myevents
else
    FILE=./myevents.conf
    if [ -f "$FILE" ]
    then
    n=`cat ./myevents.conf`
    sed -n "1,${n}p" ./myevents
    else
    sed -n "1,7p" ./myevents
    fi
fi

#!/usr/bin/bash

s=`cat "/etc/group"`

for i in $s
do
	s1=`echo "$i" | awk -F, '{print $2}'`
	if [ ! -z $s1 ]
	then
		duplicate+=$(echo "$i" | grep -w "$1" | awk -F ':' '{print $4" "$5}')
	else
		continue
	fi
done
echo "$duplicate" | tr ' ' '\n' | sort | uniq | awk -F "$1" '{print $1 $2}' | awk -F ',' '{print $1 $2}'

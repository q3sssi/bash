#!/usr/bin/bash

s=`cat "/etc/group"`

for i in $s
do
	s1=`echo "$i" | awk -F, '{print $2}'`
	if [ ! -z $s1 ]
	then
		echo "$i" | grep -w "$1"
	else
		continue
	fi
done

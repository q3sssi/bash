#!/usr/bin/bash
if [ ! -z $1 ]
then
	echo "$(find ./ -type f -ls -name "*.$1" | grep "$2" | awk '{print $8" "$9" "$11}')"
else
	echo "File extension incorrect"
fi

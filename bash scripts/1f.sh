#!/usr/bin/bash
if [ ! -z $1 ]
then
	find ./ -type f -name "*.$1" | xargs ls -l
else
	echo "File extension incorrect"
fi

#!/usr/bin/bash

lines=$(echo $PATH | tr ':' '\n')

for i in $lines
do
	if [[ -d "$i" ]]
	then
		echo "$i"
	else
		echo "Directory \"$i\" doesnt exist"
	fi
done 

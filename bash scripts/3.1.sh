#!/usr/bin/bash
k=$(which "$1")
if [ -z $k ]
then 
	echo "Programm $1 doesnt exist in PATH"
else
	echo "$k"
fi

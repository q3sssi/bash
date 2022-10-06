#!/usr/bin/bash
if [[ ! -z $2 ]]
then
	cd $2 2>/dev/null
else 
	cd ./
fi
file=`ls -lARG | egrep -v ^d | awk -F ' ' '{print $3" "$4}' | grep -w "$1" | awk '{print $2}'`
if [[ ! -z $file ]]
then
	for i in $file
	do
		let ik+=$i
	done
	echo "Disk usage for user \"$1\" = $ik"
else
	echo "Incorrect username"
fi

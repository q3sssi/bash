#!/usr/bin/bash
if [ ! -z $1 ]
then
	if [ $1 == "-d" ]
	then
		if [ ! -z $2 ]
		then
			DateCompare=`date -d "$2" +"%s"`
			DateInFile=`awk '{print}' ./myevents`
			k=$(while read -r line;
			do
				k=`echo "$line" | awk '{print $1}'`
				DateInFileConvert=`date -d "$k" +%s`
				if [[ $DateInFileConvert > $DateCompare ]]
				then
					echo "$line"
				else
					:
				fi
			done < ./myevents)
			n=`cat ./myevents.conf`
			echo "$k" | tail -"${n}"
			
		else
			:
		fi
	else
		DATE=`date +"%D %T"`
		echo "$DATE $1" >> ./myevents
		cat ./myevents
	fi
	
#output without arguments
else
	FILE=./myevents.conf
	if [ -f "$FILE" ] 
	then
		n=`cat ./myevents.conf`
		tail -n "${n}"  ./myevents
	else
		tail -n 7 ./myevents
	fi
fi

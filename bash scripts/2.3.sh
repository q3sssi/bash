#!/usr/bin/bash
if [ ! -z $1 ]
then
	if [ ! -z $2 ]
	then
		#DATE=`date +"%D %T"`
		#echo "$DATE $1" >> ./myevents
		DateCompare=`date -d "$2" +"%s"`
		#DateInFileN=`cat ./myevents`
		DateInFile=`awk '{print}' ./myevents`
		#echo "$DateInFileN"
		#DateInFileConvert=$(date -d $DateInFile +%s)
		#echo "$DateInFile"
		#echo "$DateInFileConvert"
		while read -r line;
		do
			k=`echo "$line" | awk '{print $1}'`
			DateInFileConvert=`date -d "$k" +%s`
			if [[ $DateInFileConvert > $DateCompare ]]
			then
				echo "$line"
			else
				:
			fi
		done < ./myevents
		
		#echo "$DateInFile" #mm dd yy
		#echo "$DateCompare" #yy mm dd
		#if [[ "$DateInFile" > "$DateCompare" ]]
		#then
			#awk '{ if("$DateInFile" > "$DateCompare") print;}' ./myevents
		#else
		#	:
		#fi
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
		sed -n "1,${n}p" ./myevents
	else
		sed -n "1,7p" ./myevents
	fi
fi

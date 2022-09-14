#!/usr/bin/bash
if [ ! -z $1 ]
then
	if [ ! -z $2 ]
	then
		#DATE=`date +"%D %T"`
		#echo "$DATE $1" >> /home/casey/Documents/bash\ scripts/myevents
		DateCompare=`date -d "$2" +"%s"`
		#DateInFileN=`cat /home/casey/Documents/bash\ scripts/myevents`
		DateInFile=`awk '{print}' /home/casey/Documents/bash\ scripts/myevents`
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
		done < /home/casey/Documents/bash\ scripts/myevents
		
		#echo "$DateInFile" #mm dd yy
		#echo "$DateCompare" #yy mm dd
		#if [[ "$DateInFile" > "$DateCompare" ]]
		#then
			#awk '{ if("$DateInFile" > "$DateCompare") print;}' /home/casey/Documents/bash\ scripts/myevents
		#else
		#	:
		#fi
	else
		DATE=`date +"%D %T"`
		echo "$DATE $1" >> /home/casey/Documents/bash\ scripts/myevents
		cat /home/casey/Documents/bash\ scripts/myevents
	fi
	
#output without arguments
else
	FILE=./myevents.conf
	if [ -f "$FILE" ] 
	then
		n=`cat /home/casey/Documents/bash\ scripts/myevents.conf`
		sed -n "1,${n}p" /home/casey/Documents/bash\ scripts/myevents
	else
		sed -n "1,7p" /home/casey/Documents/bash\ scripts/myevents
	fi
fi

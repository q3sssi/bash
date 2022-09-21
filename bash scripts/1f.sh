#!/usr/bin/bash
if [ ! -z $1 ]
then
	d=`find ./ -type f -name "*.$1" | xargs ls -l | awk '{print $6" "$7" "$9}'`
	#echo "$d"
	while read -r line;
	do
		k=`echo "$line" | awk '{print $1 $2}'`
		echo "k"
		#DateInFileConvert=`date -d "$k" +%s`
		#if [[ $d > $2 ]]
		#then
		#	echo "$line"
		#else
		#	:
		#fi
	done < "$d"
else
	echo "File extension incorrect"
fi

#!/usr/bin/bash

s=$(ls -l )
for i in "$s"
do
	#s1=`echo $i | awk '{print $1}'`
	#s2=`echo $i | awk '{print}'`
	echo "$i"
	echo "1"
	#if [[ $s1 == $1 ]]
	#then
	#	echo "1"
	#	#let $k+=$2
	#else
	#	continue
	#fi
done

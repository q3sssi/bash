#!usr/bin/bash
k=`ps -e | grep -w $1 | awk -F ' ' '{print $1}'`
kill $k

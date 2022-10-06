#!usr/bin/bash
while :
do
netstat -s | grep segments >> ./netstatlog
sleep 600
done

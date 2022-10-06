#!/usr/bin/bash
suid=`find /home/$1 -perm /4000`
sgid=`find /home/$1 -perm /2000`

echo -e "suid files: \n$suid \n\nsgid files: \n$sgid"

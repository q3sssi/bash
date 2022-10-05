#!/usr/bin/bash
mkdir ./.deleted_files 2>/dev/null
mkdir ./.removed-files 2>/dev/null
touch ./.removed-files/log 2>/dev/null
d=`date +"%D %T"`
t=`date +"%T"`
tar czf $1.tgz ./$1
rm $1
echo "$d $1" >> ./.removed-files/log
mv $1.tgz ./.deleted_files/$1-$t.tgz

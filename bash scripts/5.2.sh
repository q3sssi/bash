#!usr/bin/bash
k=`ls ./.deleted_files | grep $1`
c=0

for i in $k
do
	let c+=1
	echo "$c.$i"
	z+=`echo -e "\n$c.$i"`
done

read some

filetar=`echo "$z" | grep -w "$some" | awk -F '.' '{print $2"."$3}'`
tar xf ./.deleted_files/$filetar
#rm ./.deleted_files/$filetar

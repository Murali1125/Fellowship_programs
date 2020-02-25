#! /bin/bash

function f(){
for (( i=1;i<10;i++ ))
do
	echo "$i"
	if [ $i -eq 5 ]
	then
	return 100
	fi
done
}
f
echo "$?"

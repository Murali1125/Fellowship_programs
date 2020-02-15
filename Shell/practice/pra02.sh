#! /bin/bash

n=1
while [ $n -le 3 ]
do
	echo "$n"
	gnome-terminal &
	((n++))
done 

#! /bin/bash -x

#declaea temp variable to compae the values
temp=0
# a temp  variable to store the responce code
resp=0

# getting the responce codes
for i in `cat access.log | awk '{print$9 }'|sort `
do
	# initilize resp
	if [ $resp -eq 0 ]
	then
		resp=$i
	fi
	# if i is eqaul to temp => increase the count and continue the loop
	if [ $resp -eq $i ]
	then
		count=$(( count + 1 ))		
		continue
	#else print the responce code and count, and count make to 1
	else
		echo " responce code $resp  : $count"
		resp=$i
		count=1
	fi
done

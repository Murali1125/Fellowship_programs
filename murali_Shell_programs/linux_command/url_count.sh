#! /bin/bash -x

# declare a temp variable
j=abc
# declare a count variable to break the loop
count=0

# get the urls
for i in ` cat access.log | awk '{print $1}'|sort`
do
	
	k=`echo "$i"`
	if [ $k == $j ]
	then
		continue
	else
		
		echo $i
		j=`echo "$i"`
		# if the ip value printed then increase the count variable
		(( count++ ))
	fi
	#count equal to 10 then break the loop
	if [ $count -eq 10 ]
	then
		break
	fi
done

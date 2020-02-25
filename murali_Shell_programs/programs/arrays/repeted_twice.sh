#! /bin/bash -x

# Take a range from 0 – 100, find the digits that are repeated
# twice like 33, 77, etc and store them in an array
#-------------------------------------------------------------

# declare an empty array to store the values and index_variable to track the index of array
declare -a array
index=0
# loop in range starting 1 and end 100
for (( i=1;i<=100;i++ ))
do
	#the repeted twice number ex 33,77 etc.. are divisable by 11
	# if the number divisable by 11 then add the number into array
	if [ $(( i % 11 )) -eq 0 ]
	then
		array[$index]=$i
		#increase the index by 1
		index=$(( index + 1 ))
	fi
done
#print the array
echo " array elements :  ${array[@]} "

#! /bin/bash -x

# Write a program that does 
# a. generate 10 random 3 digit numbers
# b. store this random numbers into an array
# c. then find 2nd largest and 2nd smallest elements with sorting
#----------------------------------------------------------------

# read the number of elements in the array by user
read -p " enter how many elements want to insert   :  " len
#decalre an empty array
declare -a array
#read the elements from the user 
for (( i=0;i<$len;i++ ))
do
	read -p "enter element $(( i + 1 )) : " p
	array[i]=$p
done

#sort the array by using bobblesort
for (( i=0;i<$len;i++ ))
do
	for (( j=i+1;j<$len;j++ ))
	do
		# if arra[i] > array[j] swap the elements
		if [ ${array[i]} -gt ${array[j]} ]
		then
			# declarea temp variable to store value
			temp=${array[i]}
			array[i]=${array[j]}
			array[j]=$temp
		fi
	done
done

# print 2nd smallest and 2nd largest elements
echo " 2nd smallest elemenmt : ${array[1]}"
echo " 2nd largest element   : ${array[$len-2]} "

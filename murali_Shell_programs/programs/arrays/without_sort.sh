#! /bin/bash -x

#Write a program that does the following
# a. Generates 10 Random 3 Digit number.
# b. Store this random numbers into a array.
# c. Then find the 2nd largest and the 2nd smallest element without sorting the array.
#-------------------------------------------------------------------------------------

# read the number of elements are to be insert from the user
read  -p "enter hoe many elememts are to be insert  "  len

# declare an empty array to store the elements
declare -a array

#read the elements from the user 
#loop $len times
for (( i=0;i<len;i++ ))
do
	# read the element from the user
	read -p " enter element $(( i + 1 ))  : " k
	array[i]=$k
done

# declare temp variables to store max and min values
max1=0 # largest element
min1=0 # smallest element
max2=0 # 2nd largest element
min2=0 # 2nd smallest element
# finding the largest and smallest element in the list
# loop $len times
# to get 2nd smallest and 2nd largest elements 1st find 1st largest and 1st smalleset elements
for (( i=0;i<len;i++ ))
do
	# assgin 1st value to the max1  and min1 variables
	if [ $i -eq 0 ]
	then
		max1=${array[i]}
		min1=${array[i]}
	# else compare the element and swap respective elements
	else
		# comparing max1 value
		if [ $max1 -lt ${array[i]} ]
		then
			max1=${array[i]}
		fi
		# comparing min1 value
		if [ $min1 -gt ${array[i]} ]
		then
			min1=${array[i]}
		fi
	fi
done

# getting the 2nd smallest and 2nd largest elements by same as 1st one
# assign max1 value to min2 and min1 value to max2 since for initilization
max2=$min1
min2=$max1
for (( i=0;i<len;i++ ))
do
	# comparing max2 value
	if [ ${array[i]} -lt $max1 -a ${array[i]} -gt $max2 ]
	then
		max2=${array[i]}
	fi
	# comparing min2  value
	if [ ${array[i]} -gt $min1 -a ${array[i]} -lt $min2 ]
	then
		min2=${array[i]}
	fi

done

echo " 2nd largest element   :  $max2 "
echo " 2nd smallest element  :  $min2 "

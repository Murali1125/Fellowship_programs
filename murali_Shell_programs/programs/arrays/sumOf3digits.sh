#! /bin/bash -x

#Write a Program to show Sum of three Integer adds to ZERO
#---------------------------------------------------------

# read the number elements want to insert by the user
read -p "enter number of elements do you want to insert   " num

#declare an empty array to store the elements
declare -a arr
#run the loop num times to read the elements
for (( i=0;i<$num;i++ ))
do
	# read the elements from the user
	read -p " enter element $(( i + 1 )) :   " k
	#store the element into array
	arr[$i]=$k
done

# check that sum of three elements  = 0 then print the values

#loop for 1st element
for (( i=0;i<$(( num - 2 ));i++ ))
do
	# loop for 2nd element
	for (( j=$(( i + 1));j<$(( num - 1 ));j++ ))
	do
		# loop for 3rd element
		for (( k=$(( j + 1 ));k<$num;k++ ))
		do
			# if the sum of the 3 values pesent in index i j k = 10 then perint the values
			#get the sum
			sum=$(( arr[$i] + arr[$j] + arr[$k] ))
			if [ $sum -eq 0 ]
			then
				echo " sum of ${arr[i]} , ${arr[j]}, ${arr[k]}   = 0 " 
			fi
		done
	done
done

#! /bin/bash  -x

# Write a program to take three inputs a, b & c and  compute the following operations
# 1. a+b*c   2.a*b+c    3. c+a/b   4.a%b+c
# Store the results in a dictonary for every computation
# read the values from dictionary into the array
# Sort the results to show the compuation result in the Desendiung order
# sort the results to show the computation result in the Ascending order
#--------------------------------------------------------------------------------------



read -p " enter 'a  b  c 'values "  a b c

# declare dictionary to store the values
declare -A dictonary
#compute the operations and store into variables

dictonary[operation1]=$(( a + b * c ))
dictonary[operation2]=$(( a * b + c ))
dictonary[operation3]=$(( c + a / b ))
dictonary[operation4]=$(( a % b + c ))

# function sort in ascending order
function ascending(){
	array=("$@")
	# declare  a temporary variable and initilize with array[0] value
	temp=${array[0]}
	length=${#array[@]}
	for (( i=0;i<$(( length - 1 )) ;i++ ))
	do
		for (( j=$(( i + 1 )); j<$length;j++ ))
		do
			# if the element in j index is  lessthan element in index i, then swap elements
			if [ ${array[j]}  -lt ${array[i]} ]
			then
				temp=${array[i]}
				array[i]=${array[j]}
				array[j]=$temp
			fi
		done
	done
	echo "acending order =   ${array[@]} "
}
# function sort in decending order
function decending(){
	array=( "$@" )
	# declaring a temporary variable and initial with array[0] value
	temp=$(( array[0] ))
	length=${#array[@]}
	for (( i=0;i<$(( length -1 )); i++ ))
	do
		for (( j=$(( i + 1 )); j<$length;j++ ))
		do
			# if the element in j index is greater then element in index i, then swap elements
			if [ ${array[j]} -gt ${array[i]} ]
			then
				temp=${array[i]}
				array[i]=${array[j]}
				array[j]=$temp
			fi
		done
	done
	echo "Decending order = ${array[@]}"
}


ascending ${dictonary[@]}
decending ${dictonary[@]}

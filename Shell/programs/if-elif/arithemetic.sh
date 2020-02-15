#! /bin/bash -x

# Enter 3 Numbers do following arithmetic operation
# and find the one that is maximum and minimum
# 1. a + b * c 3. c + a / b
# 2. a % b + c 4. a * b + c
#-------------------------------------------------

# read a b c values from the user
read -p " enter a b c values  :  " a b c

# declare a variables to store max and min values
max=""
min=""
#declare the variables max_op, min_op to hold the operation numbers
max_op=""
min_op=""
# operation 1
val=$(( a + b * c ))
# since it is 1st operation assignthe val to max and min variable
max=$val
min=$val
max_op=1
min_op=1
# operation 2
val=$(( a % b + c ))
# if val > max assign max = val
if [ $max -lt $val ]
then
	max=$val
	max_op=2
fi
# if val < min assign min = val
if [ $val -lt $min ]
then
	min=$val
	min_op=2
fi

#operation 3
val=$(( c + a / b  ))
# if val > max assign max = val
if [ $max -lt $val ]
then
        max=$val
	max_op=3
fi
# if val < min assign min = val
if [ $val -lt $min ]
then
        min=$val
	min_op=3
fi


#operation 4
val=$(( a * b + c ))
# if val > max assign max = val
if [ $max -lt $val ]
then
        max=$val
	max_op=4
fi
# if val < min assign min = val
if [ $val -lt $min ]
then
        min=$val
	min_op=4
fi

# print max and min values

echo " maximun value : $max it gives operation $max_op"
echo " minimum value : $min it gives operation $min_op"

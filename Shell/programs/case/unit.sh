#! /bin/bash -x

# Write a program that takes User Inputs and does Unit Conversion of
# different Length units
# 1. Feet to Inch  3. Inch to Feet
# 2. Feet to Meter 4. Meter to Feet
#------------------------------------------------------------------

# unit conversion
# 1 ft   = 12 inch
# 1 inch = 0.0833333 ft
# 1 ft   = 0.3048 mt
# 1 mt   = 3.28084ft

# read the units of user input
echo " 1. feet to inch   2.inch to feet  3.feet to meters 4. meters to feet"
read -p "select conversion " con
#read the value from the user
case $con in
	1) # con  = 1 convert feets into inches and print
		read -p "value  :  " val
		n=`expr "scale=2;$val * 12" | bc -l`
		echo "$n inches  "  ;;
	2) # con = 2 convert inches into feets  and print
		read -p "value  :  " val
		n=`expr "scale=2;$val / 12 "|bc -l`
		echo "$n feets  "  ;;
	3) # con = 3 convert feets into meters and print
		read -p "value  :  " val
		n=`expr "scale=2;$val * 0.3048" | bc -l`
		echo "$n meters";;
	4) # con = 4 convert meters into feet and print
		read -p "value  :  " val
		n=`expr "scale=2;$val * 3.28084" | bc -l`
		echo "$n feets";;
	*) # else invalid input
		echo "invalid input" ;;
esac

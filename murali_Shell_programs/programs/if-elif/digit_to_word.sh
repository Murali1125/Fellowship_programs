#! /bin/bash -x

# Read a single digit number and write the number in word
#--------------------------------------------------------

#read the digit from the user
read -p "enter a single digit"  dig

#if dig = 0 print "Zero"
if [ $dig -eq 0 ]
then
	echo "Zero"
# if dig = 1 print 'one'
elif [ $dig -eq 1 ]
then
	echo "One"
# if dig = 2 print "Two"
elif [ $dig -eq 2 ]
then
	echo "Two"
# if dig = 3 print "Three"
elif [ $dig -eq 3 ]
then
	echo "Three"
# if dig = 4 print "Four"
elif [ $dig -eq 4 ]
then
	echo "Four"
# if dig = 5 print "Five"
elif [ $dig -eq 5 ]
then
	echo "Five"
# if dig = 6 print "Six"
elif [ $dig -eq 6 ]
then
	echo "Six"
# if dig = 7 print "Seven"
elif [ $dig -eq 7 ]
then
	echo "Seven"
# if dig = 8
elif [ $dig -eq 8 ]
then
	echo "Eight"
#if dig = 9 print "Nine"
elif [ $dig -eq 9 ]
then
	echo "Nine"
# else unvalid input
else
	echo "invalid input"
fi

#! /bin/bash -x

#Read a single digit number and write the number in word using Case
#------------------------------------------------------------------

# read the digit from the user
read -p " enter a digit : " dig

# check the digit by using case statement
case $dig  in
	0) # if dig = 0 print 'Zero'
		echo "Zero" ;;
	1) # if dig = 1 print 'One'
                echo "One" ;;
	2) # if dig = 2 print 'Two'
                echo "Two" ;;
        3) # if dig = 3 print 'Three'
                echo "Three" ;;
	4) # if dig = 4 print 'Four'
                echo "Four" ;;
        5) # if dig = 5 print 'Five'
                echo "Five" ;;
        6) # if dig = 6 print 'Six'
                echo "Six" ;;
        7) # if dig = 7 print 'Seven'
                echo "Seven" ;;
	8) # if dig = 8 print 'Eight'
                echo "Eight" ;;
        9) # if dig = 9 print 'Nine'
                echo "Nine" ;;
	*) # else print "unknown value"
		echo "unknown value"
esac



#! /bin/bash

#Use random to get dice number between 1 to 6

# divide the RANDOM variable with 6 and add 1 it will give the numbers from 1 to 6

echo " Dice : $(( RANDOM%6+1 ))"

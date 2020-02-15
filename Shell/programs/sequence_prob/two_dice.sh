#! /bin/bash

# Add twRandom Dice number and print the result

# getting 1st dice random number
dice1=$(( RANDOM%6+1 ))

# getiing 2nd dice random number
dice2=$(( RANDOM%6+1 ))

# Disply the sum of the two dice numbers
echo "sum of the dice numbers = $(( dice1 + dice2 ))"

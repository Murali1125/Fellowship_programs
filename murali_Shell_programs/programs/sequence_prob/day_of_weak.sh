#! /bin/bash -x

#Write a program that takes a date as input and prints the day of the week
#that date falls on. Your program should take three command-line arguments:
#m (month), d (day), and y (year). For m use 1 for January, 2 for February, 
#and so forth. For output print 0 for Sunday, 1 for Monday, 2 for Tuesday,
#and so forth. Use the following formulas, for the Gregorian calendar
# (where / denotes integer division):
#• y0 = y − (14 − m) / 12
#• x= y 0 + y 0 /4 − y 0 /100 + y 0 /400
#• m0 = m + 12 × ((14 − m) / 12) − 2
#• d0 = (d + x + 31m 0 / 12) mod 7
#-------------------------------------------------------------------------------

# read the date from the user d-day m-month y-year
read -p "enter : day month year " d m y

# create an associate array to display the day
declare -A days
#assign weak days to the values
days[1]="Sunday"
days[2]="Monday"
days[3]="Tuesday"
days[4]="Wednesday"
days[5]="Thursday"
days[6]="Friday"
days[7]="Saturday"

#getting the day of the weak number by uising above expressions
y0=$(( y - ( 14 - m ) / 12 ))
x=$(( y0 + ( y0 / 4 ) - ( y0 / 100 ) + ( y0 / 400 ) ))
m0=$(( m + 12 * (( 14 -m ) / 12 ) -2 ))
d0=$(( ( d + x + ( 31 * m0 ) / 12 ) % 7 ))

# printting the day of the weak using d0 value
echo " the day is : ${days[$d0]}"

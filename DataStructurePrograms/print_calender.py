"""-----------------------------------------------------------------------------
--> Write a program  that takes the month and year as command-line arguments and
--prints the Calendar of the month. Store the Calendar in an 2D Array, the first
--dimension the week of the month and the second dimension stores the day of the
--week. Print the result as following
-----------------------------------------------------------------------------"""
from Fellowship_programs.DataStructurePrograms.Calender import calender

#creating object for calender class
obj_cal = calender()
# reading year and month from user
year = int(input("Enter the year"))
month = int(input("Enter the month"))
# declaring months dictionary
m = {1:"January",2:"February",3:"March",4:"Aprial",5:"May",6:"June",7:"July",8:"Auguest",9:"September",10:"Octomber",11:"November",12:"December"}

cal = obj_cal.month(year,month)
print()
print("Calender ")
print()
print("{} {}  ".format(year,m[month]))
# printing the calender
for i in cal:
    print(i)
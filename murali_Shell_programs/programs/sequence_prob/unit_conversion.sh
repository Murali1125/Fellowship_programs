#! /bin/bash -x

# unit conversion
# a. 1ft = 12in then 42 in = ?ft
# b. Reactangular plot of 6ft* 40 ft in meters
# c. Calculate area of 25 such plots in acres
#----------------------------------------------

# a
#------
# 1ft = 12inch
read -p "enter inches" inc
var=`echo "scale=2;$inc/12"|bc`
echo "$inc inch = $var" 

# b
#-----
# 1ft = 0.3048mt
read -p " enter length of the plot(ft)" len
read -p " enter width of the plot(ft)" wid
# area = length * width
area=`expr "$len * 0.3048 *  $wid * 0.3048"|bc`
echo " area of rectangular plot(mt) = $area "

# c
#------
# 1 sq.m = 0.000247105 acers
ace=`expr "25 * 0.000247105 * $area"|bc`
echo " area 25 plots(acres) =$ace" 

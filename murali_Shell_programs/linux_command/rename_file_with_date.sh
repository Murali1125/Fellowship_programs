#!/bin/bash


# getting files which have extenssion .log

for i in `ls *.log`
do
	#getting the date
	d=` date +%Y%m%d`     # getiing the file name
	file=` echo $i | awk -F. '{ print $1 }' `;    #creating the new name with date
	new_name=`echo $file$d.log`       	# rename the file
	mv $i $new_name
done

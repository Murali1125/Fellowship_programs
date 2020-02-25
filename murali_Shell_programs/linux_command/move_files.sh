#! /bin/bash -x

# creating 3 files 
touch a.txt b.txt c.txt
#reading the files
for i in `ls *.txt`
do
	# getting directory names
	folder=`echo $i | awk -F. '{ print $1 }' `;
	# if floder present with the name delete the directory
	if [ -e $folder ]
	then
		rm -r $folder ;
	fi
	# create a new directory
	mkdir $folder
	# move the files to respective folders
	mv $i $folder
done

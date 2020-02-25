#! /bin/bash -x

# execute hello and ls commands
hello
# strore execution status of hello in a variable
hel=$?

#execute ls status
ls
# store execution status of hello in a variable
l=$?

#if hel equal to 0 hello  executed succesfully
if [ $hel -eq 0 ]
then
	echo " hello command executed succesfully"
else
	echo " hello command executed unsucdcesfully "
fi

# if l equal 0  ls executed succesfully

if [ $l -eq 0 ]
then
	echo " ls command executed succesfully"
else
	echo "ls command executed unsuccesfully"
fi

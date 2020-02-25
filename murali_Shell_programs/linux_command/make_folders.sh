# if folder exists print folder exists

if [ -e  "folder_p" ]
then
	echo " $folder_p exists"
# else create folder
else
	mkdir folder_p
fi

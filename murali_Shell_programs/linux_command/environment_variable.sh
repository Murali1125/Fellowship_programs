#! /bin/bash  -x
# check environment variable present or not
#unset USERSECRET
export USERSECRET="sadf"
if [[ -z "${USERSECRET}" ]]
then
	 export USERSECRET="dH34xjaa23"

# else create new environmental variable
else
	echo " variable already present"
fi
echo $USERSECRET


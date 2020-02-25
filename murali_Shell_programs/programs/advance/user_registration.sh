#! /bin/bash  -x

#------------- Welcome to user registration -----------------------------------------------------------------
# As a user u need to enter a valid first name  [ first name start with cap and has minimum 3 charecters ]
# As a User need to enter a valid Last Name - [ Last name starts with Cap and has minimum 3 characters]
# As a User need to enter a valid email - E.g. abc.xyz@bl.co.in - Email has 3 mandatory parts (abc, bl
# ->& co) and 2 optional (xyz & in) with precise @ and . positions
# As a User need to follow pre -defined Mobile Format - E.g. 91 9919819801 - Country code follow by space and 10 digit number
# As a User need to follow pre -defined Password rules. Rule1– minimum 8 Characters
# Rule2 – Should have at least 1 Upper Case
# Rule3 – Should have at least 1 numeric number in the password
# rule4 - Should have only one special charecter
#----------------------------------------------------------------------------------------------------------------------------

#variables
first_name=''
last_name=''
email=''
mobile_number=''
password=''
#function for 1st name
function fun_firstName(){
	read -p " enter 1st name " first_name
	# check the first name its start with capital letter and min 3 charectors
	res=`echo "$first_name" | grep  "^[A-Z].."`
	# if res=None then recall the first name function
	if [ "$res" == '' ]
	then
		echo " Enter a valid  first name "
		echo " first name has min 3 charecors and should start with capital letter"
		fun_firstName
	fi
}

#function for last name
function fun_lastName(){
	read -p " entr last name " last_name
	# check the last name is start with capital letter has min 3 charecters 
	res=`echo "$last_name" | grep "^[A-Z].."`
	# if res is none then recall the last name function
	if [ "$res" == '' ]
	then
		echo "Enter a valid last name"
		echo " first name has min 3 charecters and should start with capital letter"
		fun_lastName
	fi
}
# function for email
function fun_user_email(){
	read -p " enter email id  "  email
	# check email
	res=`echo "$email" | grep  '^[a-zA-Z0-9]*@[a-zA-Z0-9]*\.[a-zA-Z0-9]*$' `
	if [ "$res" == '' ]
	then
	echo " enter a valid mail id"
	echo " the mail id abc.xyz@bl.co.in - Email has 3 mandatory parts (abc, bl & co) and 2 optional (xyz & in) with precise @ and . positions "
	fun_user_email
	fi

}
# function for mobile
function fun_user_mobile(){
	read -p " enter mobile number " mobile_number
	# chek mobile nuber format
	res=`echo "$mobile_number" | grep -P '\d{2} \d{10}'`
	if [ "$res" == '' ]
	then
		echo " enter phone number in valid format"
		echo "E.g. 91 9919819801 - Country code follow by space and 10 digit number"
		fun_user_mobile
	fi
}
#function for password validation
function fun_password(){
	read -p " enter a password  " password
	if [ ${#password} -lt 8 ]
	then
		echo "enter a valid password"
		echo " the password must have min 8 charectors"
		fun_password
	else
		res=` echo "$password" | grep "[A-Z]" | grep "[0-9]" | grep -o "[^0-9a-zA-Z]"`
		len=${#res}
		if [ $len -ne 1  ]
		then
			echo " enter a valid password"
			echo " Should have at least 1 Upper Case and Should have at least 1 numeric number and only one special charecter in the password"
			fun_password
		fi
	fi
}
fun_firstName
fun_lastName
fun_user_email
fun_user_mobile
fun_password

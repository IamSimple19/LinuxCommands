#!/bin/bash
#Use of conditions
echo "Enter your name please:"
read name
if [ $name == 'Jagtar' ] || [ ${name^^} == "JAGTAR" ] #Command to convert lcase and ucase on the fly
then 
	echo "Hey man!!! Today is `date`" #tilde quotes works as command not a string
elif [ $name == "Ravi" ]
	then
		echo "Welcome Ravi!!"
else
	echo "Oh! you are not that one"
fi

#Bonus
#How to use export command in shell

name () {   #Define a function

	echo "Hey!! man How are you doing?"
	OSversion=10.1
	export OSversion
	if [ $OSversion == 10.2 ]
	then
		echo "This version is supported"
	else
		echo "This version is not supported"
    fi
}

name  #This is how we call a function just simply name no  use of ()

#export variable
Age=26  #Define var
export Age #Export that var in env library
echo $Age #print that env var 
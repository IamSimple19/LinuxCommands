#!/bin/bash

if [[ ! $1 ]] ;
then
	echo "Argument is missing in command!!"

fi

bindir="$HOME/bin"
filename="$bindir"/$1
if [[ ! -d $bindir ]] ; 
then
	if mkdir "$bindir" ;  #Nested if
	then
		echo "Created $bindir"
	else
		echo "Cannot create dir!!!"
	exit 1
	fi
fi

if [[  -e $filename ]] ;
then
	echo "File $filename already exits"
else
	touch $filename
fi

chmod +x $filename
echo "!#/bin/bash" > $filename
subl $filename

#!/bin/bash
arrayfun (){

	arraylist=("Hey" "my" "name" "is" "jag")
	echo ${#arraylist[@]}  #lenght of array
	echo ${arraylist[@]//m/M}   #to print all elements of array and search and replace in array convert m to M
	echo ${arraylist[3]}   #to print specific element of array
}

my_array=(1 2  `pwd` 3 4 5)
echo ${my_array[2]}
arrayfun 
if [ ${my_array[2]} == "/home/imp/Desktop" ];
then
	echo "YOOOOO!!!"
else
	echo "NOOOOO!!!"
fi


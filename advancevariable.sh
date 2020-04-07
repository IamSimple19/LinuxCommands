#!/bin/bash

#How to declare advance variables

declare -i number  #this will declare number var as integer 

number="4+5"
echo $number 

#If you try to asign string value to number varibale after declaring it -i then it will return 0 value

declare -i x
x=100/2
echo $x
x=$((x+1)) #increase by 1
echo $x
x=$((++x)) #increase by 1
echo $x

#we can declare varibales as read only, it means they can't be changes afterwards

declare -r number=35 #here number will constant var
$number= $(( number+1 )) #here bash will give error coz we are trying to change the value of variable.
echo $number 

#Export varibales we can do it in two ways

export num="4"
declare -x num1="5"

#by exporting the varibales we can use them in other scripts as well

echo $0  #this variable always contains scriptname and its path
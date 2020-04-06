#!/bin/bash

number=$(( $RANDOM % 10 ))   #This assures the number is less than 100

guess=     #defined empty var

until [[ $guess -eq $number ]]; do #Loop untill
	read -p "Enter your guess:" guess
	if [[ $guess -eq $IFS ]]; then
		echo "Please enter a number"
	elif [[ $guess -gt $number ]]; then
		echo "The number is higher , Actual number was $number"
	elif [[ $guess -lt $number ]]; then
		echo "The number is lower, Actual number was $number"
	else
		echo "Congo!!!!, You Found it. Yes it was $number"
	fi
done
#!/bin/bash

echo -n "Are you sure?"
while [[ ! $answer ]]; do
	read -r answer
	if [[  $answer = [Yy] ]]; then
		echo "Your answer is yes"
	elif [[ $answer = [Nn] ]]; then
		echo "Your answer is no"
	fi
done

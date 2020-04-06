#!/bin/bash

newfile=$( ls -t | head -n 2 | grep .sh ) #this will fetch the latest .sh file

echo "This file is latest $newfile"

read -p "Do you want to commit this file:" answer
if [[ $answer = [Yy] ]]; then
	echo "******Git Process is Started********"
    git add $newfile
    read -p "Enter your commit message:" commitmsg
    git commit -m "$commitmsg"
elif [[ $answer = [Nn] ]]; then
	echo "******Git Process is stopped******"

fi



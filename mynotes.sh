#!/bin/bash 

#get the iput by user
topic="$1"
echo "Your note topic is:$topic"
filename="${topic}notes.txt"
read -p "Enter Your Node:" note
echo "$note" >> "$filename"
echo "Note has been saved to file $filename"

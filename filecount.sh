#!/bin/bash

dir1=/home/imp/Desktop
dir2=/home/imp/Downloads
set -x
count_dir1=$(ls -A1 "$dir1" | wc -l)
count_dir2=$(ls -A1 "$dir2" | wc -l)
set +x
if [[ count_dir1 -eq count_dir2 ]] ; 
then
	echo "Both $dir1 and $dir2 have same files"
elif [[ count_dir1 -gt count_dir2 ]]; 
then
	echo "$dir has more files than $dir2"
else
	echo "$dir2 has more files than $dir1"
fi
	#statements
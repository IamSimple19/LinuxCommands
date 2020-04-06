#!/bin/bash
inputfile=$1
file="`pwd`/$1"
if [[ -e $file ]]
  then
     echo "**************checking file if exists****************"
     echo "*********************found file**********************"
     if [[ -x $file ]]
      then
       echo "You have permission to execute $file"
    else
      echo "You don't have execute permissions to $file"
  fi
elif [[ ! -e $file ]]; then

	echo "File does'nt exists"
fi
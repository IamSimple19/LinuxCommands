#!/bin/bash

#This is my first script
#How to use interactive input by user
echo "Enter your name Please"
read name
echo "Greeting $name"


#Create a file using username

echo "Enter your name it will create a file for you"
read USER_NAME
echo "Your name is $USER_NAME"
echo "*************Creating file for you**********"
touch ${USER_NAME}_file
echo "***************DONE****************"

#Instert content into file

echo "Hello $USER_NAME how are you doing" > ${USER_NAME}_file

echo "*************changing file name***********"

mv ${USER_NAME}_file newfile

echo "************DONE*********"
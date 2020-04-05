#cat large content files

less filename  #it will create pages of content use / to search keywords , space to go down and b to go up through pages

#to copy a directory use 
cp -R dirname1 dirname2 #where -R flag is use to copy folders.

rm filename  #it works on files only
rmdir dirname #it works on directory but empty
rm -r #it will delete all the content of directrory


#User of Wildcards 

ls *a #will list all the files start with a
ls *at* #to list files with middle string that is at
mv *txt directoryname #will move all the txt files
ls D*s # it will list start with D and end s

#suppose there are files name as file1.doc,file2.doc upto file10.doc
rm file[2-4].doc  #it will remove all the file2,file3,file4 this is range wildcard

#Brace Expansion 	
touch file{1..10}.doc  #it will create files like file1.doc, file2.doc and so on upto filename10.doc
mv file{1..4}.doc directory #will move files till file4.doc

#Output redirection

ls > list.txt #output will be in list.txt file
cat > list.txt #it will redirect input to file

# use > this is overwrite the file content and use >> will append the content


#Now what are pipes

ls | less #pipes are used to take the output from first command and give this to next command as input

grep keyword filename #it will search for keyword in filename

grep keyword filename | sort > filenametogetdata

grep -i keyword filename # -i flag to skip case sensetive  


#Command substitution 

echo "Today is $(date)"
echo "Today is `date`"  #use backtick also 

#search in command history

#crtl+R and search


#How to use sorting in with bash

sort filename #with alphabets
sort -nk2 filename #sort with column 2 
sort -nk3 filename #sort with column  3
sort -rnk3 filename #sort with column 3 but in reverse order
# -n flag for numeric sort and -r for sort reverse order a to z and z to a 
#uniq this argument can be used to show uniq output no repetitive  


#use of Head and Tail

ls -ls #it will show you files according to size 
ls -ls | tail -n 1 #it will show last line of file 
ls -ls | head -n 2 #show first lines
ls -lt #sort files using last modified time
tail -f filename #show last line in real time -f is for follow

#head shows first 10 lines by default 
#tail shows first 10 lines by default 

#couting words and lines

wc filename #number of lines , number of words and number of bytes
wc -l filename #for lines count
wc -c filename #for characters


#Search files in filesystem
 find -name '*txt'

 #replacing texts in files

 cat filename | tr S s  #tr command will changes S to s
  
#Process and jobs

cp filename /demo/filename & # & this will put this command at backend

bg #this will put the command at backend

top #this will show the process that are running

#type u and them username to show process started by that user

#type kill and pid to kill any process job

#Create alias of a command

alias gerp=grep 

#list environment var
env 
name=jag
echo $name

#.bashrc file is to save your alias for all the time forever
#.profile file is also used to save settings for login shell

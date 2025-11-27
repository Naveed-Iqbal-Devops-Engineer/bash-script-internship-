#!/bin/bash

#🛠 Real-time Example 1: For Loop – Backup Multiple Files

files="file1.sh file2.sh file3.sh"
backup="backup"
for file in $files
do 
touch $file
cp -r $file $backup

 echo " backup created sucessfully $backup"

done

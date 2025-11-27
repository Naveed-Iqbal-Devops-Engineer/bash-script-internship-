#!/bin/bash

#🛠 Real-time Example 1: For Loop – Backup Multiple>

files="f1.txt f2.txt f3.txt"
backup="backup"
mkdir -p $backup

for file in $files
do 
    touch $file
    cp -r $file $backup
done
echo "$file backup created sucessfully to $backup"


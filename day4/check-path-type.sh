#!/bin/bash

path=$1

if [  -f $path ]; then 
echo "$path is file"
elif [ -d $path ]; then
echo "$path is a directory"
else "$path is not a directory."
fi

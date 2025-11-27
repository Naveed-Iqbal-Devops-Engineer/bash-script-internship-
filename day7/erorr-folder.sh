#!/bin/bash

#folder="devops"
#read -p "Enter folder name: " folder
#also end create in function variable
check_folder() {
folder=$1
if [ -z "$folder" ]; then
  echo "plz provide folder name - therefore Not folder exist"
  exit 1
fi
 if [ -d "$folder" ]; then
      echo "folder already exist {folde name $folder}"
  else
      mkdir "$folder"
      echo "folder  created successfully (folder name $folder)"
  fi
}
check_folder "$1"

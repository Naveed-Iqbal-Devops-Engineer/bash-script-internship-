#!/bin/bash
# Script to back up important cloud files 
# "/home/naveediqbal/logs"  naveediqbal is a user linux
source="/home/naveediqbal/logs"

backup="/home/naveediqbal/backup"

mkdir -p $backup
cp -r $source/* $backup

echo "Backup completed successfully."

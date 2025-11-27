#!/bin/bash

SOURCE_DIR="/home/naveed/shell-github/Day5"
BACKUP_DIR="/backup"
S3_BUCKET="s3://new-bucket-naveediqbal03-1764174220"

mkdir -p $BACKUP_DIR
cp -r $SOURCE_DIR $BACKUP_DIR
aws s3 sync $BACKUP_DIR $S3_BUCKET

echo "✅ Backup completed successfully." 

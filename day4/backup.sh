#!/bin/bash
backup="/home/naveed/backup2"
filename="etc-backup-$(date +%F).tar.gz"

mkdir -p $backup

tar -czf $backup/$filename /etc
echo "backup completed: $backup/$filename"

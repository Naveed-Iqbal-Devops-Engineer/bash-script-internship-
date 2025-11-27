#!/bin/bash
  backup="/home/naveed/bashlocal/cron/backup2"
  filename="etc-backup-$(date +%F-%H-%M).tar.gz"
 
  mkdir -p $backup
  #put etc directory data
  tar -czf $backup/$filename /etc
  # === CLEANUP OLD BACKUPS (older than 7 days) ===
  find "$BACKUP_DIR" -type f -name "*.tar.gz" -mtime +7 -delete
  echo "backup completed: $backup/$filename"
 

#!/bin/bash

source=("/var/www" "/etc/passwd")
dest="/vgdata/backups"
Date=$(date +%F)

mkdir -p $dest

tar -czf $dest/web_backup_$Date.tar.gz $source

find $dest -type f -mtime +14 -delete

echo "$(date): Backup Completed." >>/vgdata/system_backup.log
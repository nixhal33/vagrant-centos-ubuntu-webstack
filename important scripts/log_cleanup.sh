#!/bin/bash

log_dir="/var/log"
arch_dir="/vgdata/log_archive"

days=7

mkdir -p $arch_dir

find $log_dir -type f -name "*.log" -mtime +$days -exec mv {} $arch_dir \;

echo "$(date): Logs older than $days days archived." >>/vgdata/log_cleanup.log










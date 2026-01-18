#!/bin/bash

log_file="/vgdata/system_health.log"

DATE=$(date)

echo "============> REGULAR SYSTEM HEALTH CHECK UP: $DATE <===========" >>$log_file


echo "Hostname: $(hostname)" >>$log_file
echo "" >>$log_file

echo "Uptime: " >>$log_file
uptime >>$log_file
echo "" >>$log_file

echo "Disk Usage: " >>$log_file
df -h >>$log_file
echo "" >>$log_file

echo "Memory Usage: " >>$log_file
free -hm >>$log_file
echo "" >>$log_file

echo "CPU Load: " >>$log_file
tip -bn1 | head -5 >>$log_file

echo "===============> HEALTH CHECK-UP COMPLETED <====================="
echo "" >>$log_file

echo "--------------------- THANK YOU -------------------------"


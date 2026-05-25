#!/bin/bash

THRESHOLD=80
disk_usage=$(df -h / | awk 'NR==2 {print $5}' | cut -d% -f1)
if [ $disk_usage -gt $threshold ]; then 
    echo "Disk usage exceeded thershold: $disk_usage%"
else
    echo "Disk usage is normal: $disk_usage%"
fi



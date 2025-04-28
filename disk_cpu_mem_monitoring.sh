#!/bin/bash

# System monitoring script
LOG_FILE="/var/log/system_monitor.log"
THRESHOLD=80

while true; do
    # Get CPU usage
    CPU_USAGE=$(top  | grep "Cpu(s)" | awk '{print $2}' | cut -d. -f1)
    
    # Get memory usage
    MEMORY_USAGE=$(free | grep Mem | awk '{print ($3/$2) * 100}' | cut -d. -f1)
    
    # Get disk usage
    DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}' | cut -d% -f1)
    
    # Current timestamp
    TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
    
    # Check thresholds and log if exceeded
    if [ $CPU_USAGE -gt $THRESHOLD ]; then
        echo "[$TIMESTAMP] WARNING: CPU usage is ${CPU_USAGE}%" >> $LOG_FILE
    fi
    
    if [ $MEMORY_USAGE -gt $THRESHOLD ]; then
        echo "[$TIMESTAMP] WARNING: Memory usage is ${MEMORY_USAGE}%" >> $LOG_FILE
    fi
    
    if [ $DISK_USAGE -gt $THRESHOLD ]; then
        echo "[$TIMESTAMP] WARNING: Disk usage is ${DISK_USAGE}%" >> $LOG_FILE
    fi
    
     # Optional: Send email alert (requires mailutils)
     if [ $CPU_USAGE -gt $THRESHOLD ] || [ $MEMORY_USAGE -gt $THRESHOLD ] || [ $DISK_USAGE -gt $THRESHOLD ]; then
         echo "System Resource Alert!" | mail -s "Resource Usage Warning" your@email.com
     fi
    
    # Wait for 5 minutes before next check
    sleep 300
done

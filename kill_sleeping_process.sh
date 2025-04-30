# script to Find all sleeping processes and kill them.

#!/bin/bash

# Find processes in sleep state (S) and kill them. 
ps aux | awk '$8 ~ /^S/ {print $2}' | while read pid; do
    echo "Killing process with PID: $pid"
    kill -9 $pid
done

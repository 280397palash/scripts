# Find the transaction duration for each specific IP address using the start_file and stop_file

#!/bin/bash

# Create temporary files to store sorted data
start_temp=$(mktemp)
stop_temp=$(mktemp)

# Extract and sort IP addresses and epochs from start file
awk -F', ' '{print $3, $2}' start_file | sort > "$start_temp"

# Extract and sort IP addresses and epochs from stop file
awk -F', ' '{print $3, $2}' stop_file | sort > "$stop_temp"

# Join the files based on IP address and calculate duration
join "$start_temp" "$stop_temp" | awk '{print $1 ", " $3-$2}' | sort

# Clean up temporary files
rm "$start_temp" "$stop_temp"

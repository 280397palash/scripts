#!/bin/bash
# Extract IP addresses (field 4) and count occurrences, then sort by count in descending order
cat httpget.log | awk '{print $4}' | sort | uniq -c | sort -nr

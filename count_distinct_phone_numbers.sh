# need to analyze 200 GB of logfiles in approximately 5000 files to find and count the number of distinct phone numbers (assume XXX-XXX-XXXX format). How would you do this?

#!/bin/bash

find . -type f -name "*.log" | \
xargs grep -ho '[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}' | \
sort -u | \
wc -l



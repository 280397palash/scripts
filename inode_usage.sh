# Check inode usage

#!/bin/bash
df -i | awk '
NR>1 {
    usage=$5
    gsub(/%/,"",usage)
    if(usage > 50) {
        print "ALERT: " $6 " has " $5 " inode usage"
    }
}'

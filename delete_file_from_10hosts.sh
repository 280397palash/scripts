# bash script to delete a specific file from the same location in e.g. 10  multiple hosts?

#!/bin/bash

for host in $(cat /path/to/hosts.txt); do 
ssh "$host" "find /path/to/directory/file-to-delete -type f -delete" >> output.txt 
done 


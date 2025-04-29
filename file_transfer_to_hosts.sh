# file1.txt with hostnames and file2.txt with file names. Here is a script to transfer all the files listed in file2.txt to the hosts mentioned in file1.txt.

#!/bin/bash

# Simple version of file transfer script
for host in $(cat file1.txt)
do
    for file in $(cat file2.txt)
    do
        echo "Copying $file to $host"
        scp $file $host:
    done
done

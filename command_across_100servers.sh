# for 100+ servers

#!/bin/bash

# using GNU Parallel
cat server_list.txt | parallel -j 20 ssh user@{} "your_command"

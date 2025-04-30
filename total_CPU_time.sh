# Take the output of a ps -ef command and print the total CPU time used by the processes owned by each listed user.

#!/bin/bash

ps -ef | awk 'NR>1 {print $1, $7}' | sort | awk '{time[$1] = $2} END {for (user in time) print user, "\t", time[user]}'

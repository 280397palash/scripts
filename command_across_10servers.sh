# You have ten serves, how would you run a command across all of them

#!/bin/bash

# Using a simple for loop for 10 servers
for server in server1 server2 server3 server4 server5 server6 server7 server8 server9 server10; do
    ssh user@$server "your_command"
done

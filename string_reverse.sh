# script that accepts two parameters and combines them in a string in reverse order. 

#!/bin/bash

# Function to combine two parameters in reverse order
reverse_combine() {
    local param1="$1"
    local param2="$2"
    echo "$param2 $param1"
}

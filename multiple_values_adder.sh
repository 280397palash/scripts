# bash script to add multiple values.


#!/bin/bash
# Initialize sum variable
sum=0

# Check if arguments are provided
if [ $# -eq 0 ]; then
    echo "Please provide numbers as arguments"
    exit 1
fi

# Loop through all arguments and add them
for num in "$@"
do
    # Add each number to sum
    sum=$((sum + num))
done

# Print the result
echo "The sum is: $sum"

# script to print the input string entered by user by printing timeout Error if user didn't provide input.

#!/bin/bash

echo "Please enter your text (you have 10 seconds): "
if read -t 10 user_input; then
    echo "You entered: $user_input"
else
    echo "Error: Input timeout! No input received within 10 seconds."
fi

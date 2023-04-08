#!/bin/bash

echo "This is dangerous, are you sure you want to continue?"
echo "Do you want to continue? Please confirm (yes/no)"
read input
if [ "$input" == "yes" ]; then
echo "continue"
else
exit 1
fi

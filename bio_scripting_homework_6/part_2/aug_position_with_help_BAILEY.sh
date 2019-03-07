#!/bin/bash

if [ $# -eq 3 ]; then
 echo "$1 $2 $3"  | rev
 echo "$3 $2 $1"
elif [ "$1" == "-h" ]; then
 echo "Script requires three strings to operate. So type them as shown: 'string1 string2 string3' The script will then print the strings in reverse order"
else
 echo "Enter -h for help."
fi

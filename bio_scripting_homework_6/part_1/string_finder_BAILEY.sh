#!/bin/bash

printf "What is the name of the input file? \n"
read file

printf "What string do you want to find? \n"
read string

echo "The filename is $file" >> line_output
echo "The amount of lines containing your string is `grep -n "$string" $file | wc -l`" >> line_output
echo "The lines containing your string are: `grep -n "$string" $file | cut -c 1,2,3,4,5,6`"  >> line_output

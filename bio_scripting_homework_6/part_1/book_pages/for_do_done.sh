#!/bin/bash

for filename in ./*.txt
do

printf "What string do you want to find? \n"
read string

echo "The filename is $filename" >> "$filename"_output
echo "The amount of lines containing your string is `grep -n "$string" $filename | wc -l`" >> "$filename"_output
echo "The lines containing your string are: `grep -n "$string" $filename | cut -c 1,2,3,4,5,6`"  >> "$filename"_output

done

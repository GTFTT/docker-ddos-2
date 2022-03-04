#!/bin/bash

#pwd
#input="./logs"
input="../check-targets/attackTargets/lists/lists_count.txt"
#if [ -d "input" ];
#  then
#    echo "Exists"
#  else
#    echo "Not Exists"
#fi
line=$(head -n 1 $input)
echo $line
#while IFS= read -r line
#do
#  echo "$line"
#done < "$input"

#!/bin/bash

if [ "$#" -ne 2 ]; then
   echo "Error: Please enter minimum 2 Args " 
   echo "Usage: <Directory List> <search String>"
   exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ]; then
   echo "Error : Please Enter Valid Directory Path"
   exit 1
fi


X=$(find "$filesdir" -type f | wc -l)
Y=$(grep -r "$searchstr" "$filesdir" 2>/dev/null | wc -l)

echo "The number of files are $X and the number of matching lines are $Y"

exit 0


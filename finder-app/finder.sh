#!/bin/bash

if [ "$#" -lt 2 ]; then
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
echo $filesdir
X=$(find "$filesdir" -type f | wc -l)
Y=$(grep -sr "$searchstr" "$filesdir" | wc -l)

echo "Number of files = $X and Matched Lines $Y"
exit 0



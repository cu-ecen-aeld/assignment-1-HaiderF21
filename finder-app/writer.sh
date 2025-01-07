#!/bin/bash


if [ "$#" -ne 2 ]; then
echo "Error: Please Enter all the Arguments"
echo "Usage: path/to/file/name StringWritten" 
exit 1
fi

writefile=$1
writestr=$2

dir_Path=$(dirname "$writefile")

mkdir -p "dir_Path"

if echo "$writestr" > "$writefile"; then
echo "Data has been Written Successfully"
exit 0
else
echo "Error: Couldnot write File $writefile"
exit 1
fi 

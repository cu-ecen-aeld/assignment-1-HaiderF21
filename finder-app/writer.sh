#!/bin/bash


if [ "$#" -ne 2 ]; then
   echo "Error: Please Enter all the Arguments"
   echo "Usage: path/to/file/name StringWritten" 
   exit 1
fi

writefile=$1
writestr=$2

dir_Path=$(dirname "$writefile")
if [ ! -d "$dir_Path" ]; then
   echo "directory Doesnot Exist"
   mkdir -p "$dir_Path"
   echo "Directory created"
    if [ "$?" -ne 0 ]; then
        echo "failed to create $dir_Path"
        exit 1
    fi 
fi

echo "$writestr" > "$writefile"
if [ $? -ne 0 ]; then
  echo "Error : Writing to File"
  exit 1
else
  echo "Data Successfully written to File"
fi
exit 0

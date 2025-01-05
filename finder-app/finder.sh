#!/bin/bash

filesdir=$1
searchstr=$2

"Checks if one of the args is missing or not "
if [ -z "$filesdir" ] || [ -z "$searchstr" ]; then
echo "Error : You need to specify both of the Arguments 1st is Directory and Other is Search String"
exit 1
fi

"Checks if the given path is a present working directory or not"
if [ ! -d $filesdir ]; then
echo "Error: "$filesdir" is not a working directory! Please Enter Path of Working Directory"
exit 1
fi



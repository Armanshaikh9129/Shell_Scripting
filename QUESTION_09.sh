#!/bin/bash

read -p "Enter the file name you have to remove:-" FILE

if [[ -d $FILE ]]
then 
        echo "files deleting with same pattern"
        `find $FILE -type f -name "*.tmp" -exec rm -rf {} \;`
else 
        echo "Syntax error"
fi         
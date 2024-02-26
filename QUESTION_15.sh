#!/bin/bash

DIR=$1
MTIME=$2
function find1 () {
    find $DIR -type d -mtime +$MTIME -exec tree --noreport {} \;
    echo "Succesfully finded the $2 days modified file"
}

 if [[ $# == "2" ]]
 then 
        echo "Number of arguments is Coreect"
        echo "Proceding the process"

     if [[ -d $1 ]]
     then 
            echo "Finding the "
            echo "Modified time is "
            echo "Finding the Directory not modified than days"
            find1 
     else 
            echo "Cannot find the given directory"
            echo "Please check the given directory"
       fi 
    
        else 
                    echo "INVALID NUMBER OF ARGS"
                    echo "ERROR CODE"       
 fi 
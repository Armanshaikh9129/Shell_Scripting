#!/bin/bash

FILE_PATH=$1

#find /root -type f -name "*.txt" -exec sh -c 'mv "$0" "${0%.txt}.pdf"' {} \;
function Rename1() {
  EXTENSION=$1
  CH_EXTENSION=$2
  find "$FILE_PATH" -type f -name "*.$EXTENSION" -exec sh -c 'mv "$0" "${0%.*$EXTENSION}.$CH_EXTENSION"' {} \;  
  echo "Changes in the $FILE_PATH have been made"
  echo "Files have been changed successfully"
}


if [[ $# == 1 ]]
then 
        echo "Number of arguments is Coreect"
        echo "Proceding the process"

     if [[ -d $1 ]]
     then
            echo "Files are present in the given location"
            ls -lrta $FILE_PATH
            echo "Printing the Files..." 
            read -p "Enter The Extension You Want to Change :- " EXTENSION
            read -p "Enter the Extension You Want to Change With :-" CH_EXTENSION
            Rename1 "$EXTENSION" "$CH_EXTENSION"

    else        
            echo "Files Are Not Present in Working Directory !!"
            echo "Check The Path"
    fi
    
    else
    echo "Invalid Number of Args"
    echo "Please check or try again later"
  fi



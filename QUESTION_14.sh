#!/bin/bash

DIR1=$1
DIR2=$2
OUTPUT=/root/output.txt

 function difference () {
       echo -e "Finding\nThe Difference"
       diff -r $1 $2 > $OUTPUT
       echo "OUTPUT IS\nSaving"
 }

if [[ $# == "2" ]]
then 
        echo "Number of arguments is Coreect"
        echo "Proceding the process"
    if [[ -d "$DIR1" && -d "$DIR2" ]]
    then 
               echo "$DIR1 Founded Succesfully"
               echo "$DIR2 founded Succesfully"
               difference "$DIR1" "$DIR2"
    else 
               echo "Please check the Directory Name"
               echo "INVALID DIRECTORY!!!!"
       fi
               else 
                     echo "INVALID NUMBER OF ARGS"
                     echo "PLEASE CHECK THE PATH"
           
           fi          
  














 
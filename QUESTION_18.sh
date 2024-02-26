#!/bin/bash

TIME=$2
DIR=$1

function Modification() {
    echo "Searching For Modified Dir"
    find "$DIR" -type f -mmin "-$TIME" -exec ls -lrth {} \;
    echo "Searched the specified files"
}

if [[ $# == 2 ]]
then
    echo "Number of arguments is Correct"
    echo "Proceeding with the process"

    if [[ -d "$DIR" ]] 
    then
        echo "Directory Found"
        echo "Finding the Modification timing"
        Modification
    else
        echo "Directory Not Found"
    fi
else
    echo "Invalid Number of Args"
    echo "Please check or try again later"
fi

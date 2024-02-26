#!/bin/bash

USER=$2
PATH=$1
if [[ $# == 2 ]]
then
        echo "Checking the username you have entered"
        echo "The user '$USER' is present."
        /usr/bin/du -sh /$PATH/$USER

        else

        echo "Error: User directory not found."
        echo "Error: The user '$USER' does not exist."
        echo "RESULT NOT FOUND"
        echo "ERROR 404"
    fi


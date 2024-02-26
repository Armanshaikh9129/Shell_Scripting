#!/bin/bash

read -p "Enter a Directory to find :-" DIR

if [[ -d $DIR ]]
then 
        echo -e "$DIR Directory is found"
        ls -lhrt $DIR > /root/file.txt

else 
        echo "$DIR IS NOT FOUND!!!!!"
fi        
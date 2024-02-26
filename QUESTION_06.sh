#!/bin/bash

LOG=2
MTIME=4
FIND=`find /var/log -type f -mtime 4 | xargs tar -cvzf /root/archieves4.tar.gz`

if [[ $LOG != $MTIME ]]
then 
        echo -e "\nfinding.... \nThe $MTIME days old log"
        echo "log older than $MTIME days is Successfully Founded"
        echo "logs older than $MTIME days is archieved succesfully"
        echo "Operation Successfull"
else 
        echo "Their was an error understanding the request!!!"
fi                
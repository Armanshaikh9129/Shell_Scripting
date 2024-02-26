#!/bin/bash

BACKUP=60
LIMIT=60
function sync() {
    echo "periodic backup started"
    rsync -r /proc/loadavg root@192.168.56.102:/daily-backups
    echo "Backup Completed"     
}

if [[ $BACKUP == $LIMIT ]]
then 
    echo "You have started the periodic backup"
    sync

else 
    echo "YOU HAVE ENTERED INCORRECT INFORMATION"
    echo "ERROR 404"
fi


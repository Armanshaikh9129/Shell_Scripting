#!/bin/bash

DIR=/proc/sys
#rsync -av /var/log root@192.168.56.102:/daily-backups

if [[ -d $DIR ]]
then
        echo "Daily Backup is on process"
        rsync -r /proc/sys root@192.168.56.102:/daily-backups
        echo "BACKUP COMPLETED"

else
        echo "Oops Something Went Wrong later. Please try again later"

fi               
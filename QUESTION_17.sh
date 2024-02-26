#!/bin/bash
################################################################################
#   Script Name : 17_Failed_ssh_check.sh
#   Purpose     : Write a script that checks for and reports any failed SSH login attempts on a Linux server.
#             
###############################################################################

LOG=/var/log/secure
COMMAND=$grep -i "sshd.*Failed" "$LOG"
if [[ -f $LOG ]]
 then
     echo "Checking the User Login Failure"
     echo "Checking..."

 while read -r col01 col02 col04 col08 col09 col10 col11
 do
     if [[ $COMMAND != 0 ]]
     then
            echo "$col09 login Failure on $col01 $col02 $col04 From $col10 $col11 $col12"
            echo "Login Failure Checking Succesfully Completed!!"
            echo
            echo
            echo
     else
        echo "ERROR CODE"
        echo "Please Check the syntax"
 fi
done < $LOG

fi
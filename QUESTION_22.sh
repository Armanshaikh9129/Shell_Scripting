#!/bin/bash

SYSLOG=/var/log/journal
SYSLOG2=/var/log/dpkg.log
SYSLOG3=/var/log/bootstrap.log
REPORT=/root/sys_report.txt

function DISK_MAIL () {
echo -e "Hello All This is system generated email, do not reply to this email.
Daily log file generated necessary action ASAP to avoid future inconvenience.
Server Name : - `hostname` Server IP :- `ifconfig | grep inet | head -n 1 | awk '{print $2}'`
Thank & Regards
Team CloudEthix"
 }

if [[ -d "$SYSLOG" && -f "$SYSLOG2" && -f "$SYSLOG3" ]]
then 
        echo "Finding System logs"
        echo "System logs Founded" 
        echo "System logs Saving in file" > $REPORT
        echo "Sending Generated file"
        mail -s "DAILY LOGS" $EMAIL < $REPORT
        DISK_MAIL

 else 
        echo "Error 404"
        echo "Please Check the syntax"

 fi               


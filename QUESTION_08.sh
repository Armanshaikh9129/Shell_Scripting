#!/bin/bash

SITE=`curl -s --head  --request GET https://cloudethix.com`
EXIT=$?
EMAIL="armansk9129@gmail.com"

if [[ $EXIT == "0" ]]   
then 
        echo -e "$SITE -------------------------------is-up---------------------------------"
else
         echo "Website is down"
         echo -e "sending email"
         echo -e "403 Forbidden $SITE is down " | mail -s "WEB ALERT" $EMAIL
 fi       

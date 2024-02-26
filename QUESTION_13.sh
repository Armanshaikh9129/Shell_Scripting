#!/bin/bash

service apache2 status
SERVICE_NAME=apache2
HOSTPATH="/var/www/html/index.html"
HTML_FILE="/root/example.html"
HOST_IP=`ifconfig | head -n 2 | grep "inet" | awk '{ print $2 }'`

function hosting() {
        service ufw stop > /dev/null
        echo "firewall Service has been stopped"
        echo "web page hosting started"
 }

 if [[ $? == "0" ]]
 then 
        echo "Apache2 Service is Already Start"
        echo "Launcing a apache2 web page"
        cp $HTML_FILE $HOSTPATH
        hosting
        echo "Copy your IP address and hit the browser"
        echo "Your Wb Server IP is $HOST_IP" 


 else 
        echo "Apache2 service is not started"
        service $SERVICE_NAME start
        echo "apache2 service is started"
        service $SERVICE_NAME status

 fi


        
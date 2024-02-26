#!/bin/bash

read -p "Name the Service you want to check :- " SERVICE
service $SERVICE status
EXIT=$?

  if [[ $? == "0" ]]
  then 
        read -p " DO YOU WANT TO START THE SERVICE Yes(y) / No(n) / Cancel(c) :- " CHECK

        if [[ "$CHECK" = "y" ]]
        then
                service $SERVICE start 
                echo "Service started!" 
        elif [[ "$CHECK" = "n" ]]
        then
                echo "Service not been started"          
        else
                echo "Service has been cancelled"
        fi
else
        echo "Service is Running"
fi
        
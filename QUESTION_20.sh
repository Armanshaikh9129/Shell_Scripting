#!/bin/bash

WEATHER=$1

if [[ $# == 1 ]]
then
         echo "Weather Report API Calling"
         curl -s http://wttr.in/$WEATHER
         echo "Weather Report.."

else
        echo "Check the number of Args"
        echo "ERROR 404"
fi        
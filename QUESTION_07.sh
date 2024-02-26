# 07. Write a shell script that generates a report of system resource usage, including CPU, memory, and disk usage.

#!/bin/bash

CPU=`top | head -n 3 | grep "%" | awk '{ print $2}'`
DISK=`df -h | grep "rootfs" |awk  '{print $1}'`
SIZE=`df -h | grep "rootfs" | awk  '{print $2}'`
USED=`df -h | grep "rootfs" | awk  '{print $3}'`
AVAIL=`df -h | grep "rootfs" | awk  '{print $4}'`
RUNNING=`top | head -n 2 | grep "Tasks" | awk '{ print $2 ,$3}'`

echo "--------------------DISK STAT--------------------"
echo "FILE SYSTEM $DISK IS PRESENT IN THE DISK" 
echo "VOLUME OF THE $DISK IS $SIZE"
echo "USED SPACE IN $DISK IS $USED"
echo "AVAILABLE SPACE IN $DISK IS $AVAIL"
echo "------------------------------------------------"
#echo "CPU Usage of the system is $CPU"
#echo "Currently $RUNNING number of task is pending"

                      
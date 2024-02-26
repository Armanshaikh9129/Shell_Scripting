#!/bin/bash

PVTIP=`aws ec2 describe-instances  --instance-ids i-02a05e45b0bb1d72a | grep "PrivateIpAddress"`
PUBIP=`aws ec2 describe-instances  --instance-ids i-02a05e45b0bb1d72a | grep "PublicIpAddress"`
INSTANCEID=`aws ec2 describe-instances  --instance-ids i-02a05e45b0bb1d72a | grep "InstanceId"`

echo "--------------------PRIVATE IP--------------------"
echo "The private ip of your instance is $PVTIP"
echo "--------------------------------------------------"

echo "--------------------PUBLIC IP--------------------"
echo "The public ip of your instance is $PUBIP"
echo "--------------------------------------------------"

echo "--------------------INSTANCE ID--------------------"
echo "The public ip of your instance is $INSTANCEID"
echo "--------------------------------------------------"
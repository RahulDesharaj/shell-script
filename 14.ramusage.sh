#!/bin/bash


LOGFILE_DIRECTORY=/tmp

DATE=$(date +%F:%H:%M:%S)
SCRIPT_NAME=$0
LOGFILE=$LOGFILE_DIRECTORY/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

RAM_USAGE=$(free -m | grep Mem | awk '{print $3}')

RAM_USAGE_THRESHOLD=100


message="system is runnig out of RAM $RAM_USAGE"

if [ "$RAM_USAGE" -gt "$RAM_USAGE_THRESHOLD" ]; then
    echo -e "$R $message: $RAM_USAGE $N MB"
fi    


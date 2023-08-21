#!/bin/bash


LOGFILE_DIRECTORY=/tmp

DATE=$(date +%F:%H:%M:%S)
SCRIPT_NAME=$0
LOGFILE=$LOGFILE_DIRECTORY/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

RAM_USAGE=$(free)

RAM_USAGE_THRESHOLD=0.01

while IFS= read line

do
    echo "output $line"
done <<<$RAM_USAGE

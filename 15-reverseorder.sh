#!/bin/bash

DATE=$(date =%F)

LOGFILE=/tmp


LOGFILE_DIRECTORY=$LOGFILE-$DATE.log


R="\e[\32m"

N="\e[\0m"


echo " please enter the character"

read -s character

echo " enter character name is $character "


reverse=""

perl -e '${print reverse <>}'



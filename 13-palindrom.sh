#!/bin/bash

echo "please enter sting name"

STRINGNAME=$()

read STRINGNAME

INPUT=${#STRINGNAME}

reverse=""

R="\e[\32m"
N="\e[\0m"
Y="\e[\33m"

echo " enter string name is : $STRINGNAME"

for (( i=$INPUT-1; i>=0; i-- ))
do 
	reverse="$reverse${STRINGNAME:$i:1}"
done


if [ $STRINGNAME == $reverse ]

then
    echo -e " $R enter string is a palindrom $N"
    
else
    echo -e  " $Y enter string is not an panlindrom $N"
fi



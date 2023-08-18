#!/bin/bash

echo "please enter sting name"

STRINGNAME=$()

read  STRINGNAME

INPUT=${#input}

reverse=""

echo " enter string name is : $STRINGNAME"

for (( i=$INPUT-1; i>=0; i-- ))
do 
	reverse="$reverse${input:$i:1}"
done

if [ $INPUT == $reverse ]

 then
    echo " enter string is a palindrom"
    
 else
    echo "enter string is not an panlindrom"
fi



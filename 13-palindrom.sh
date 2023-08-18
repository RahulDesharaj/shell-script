#!/bin/bash

echo "please enter sting name"

STRINGNAME=$()

read -s STRINGNAME

INPUT=$(input)

reverse=""

echo " enter string name is : $STRINGNAME"

if [ $INPUT == $reverse]

then
    echo " enter string is palindrom"
    exit 1
else
    echo "enter string is not an panlindrom"
fi


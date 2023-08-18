#!/bin/bash

USERID=(id -u)

if [ $USERID -ne 0 ]
then 
    echo " Erroe:: please run with root access"
else
    echo " you are having root please proceed"
fi


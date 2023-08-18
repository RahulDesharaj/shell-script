#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]

then 
    echo " Erroe:: please run with root access"
    exit 1
else
    echo " you are having root please proceed"
fi


yum install nginx -y

if [ $? -ne 0 ]
then
    echo " installation is failure"
else
    echo "insatlltion is success"
fi


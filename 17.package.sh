#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

USERID=$(id -u)

if [ $USERID -ne 0 ] 
then
   echo -e "$R please run the script with root user $N"
fi

VALIDATE(){

    if [ $1 -ne 0 ]
    then 
      echo -e "$2 ... $R installation is failed $N"
    else
      echo -e "$2 ... $Y installation is success $N"

}

dnf list installed git 

if [ $? -ne 0 ]
then
    echo "git is not installed ... going to install the git"
    dnf install git -y
    VALIDATE $? "installing git"
else
   echo "git is inatlled"  
fi

#!/bin/bash

NAMES=("mongodb" "web" "catalouge" "mysql" "redis" "rabbitmq" "shipping" "payment" "dispatch" "user" "cart")

INSTANCETYPE=""


for i in ${NAMES}

do

    echo "NAMES : $i"

    if [[$i == "mongodb" || $i == "mysql" ]]
    then

        INSTANCETYPE="t3.medium"
    else
        INSTANCETYPE="t2.micro"
    fi        

done

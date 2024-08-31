#!/bin/bash

echo " favorite color "
color=("RED" "Green" "yellow")

read -s color

color=$favorite


for i in "${color[@]}"
do  
    if [[ $i == "RED" || $i == "yellow" ]]
    then
        echo "it is my fav clour"
    else
        echo "not fav"
    fi
done    
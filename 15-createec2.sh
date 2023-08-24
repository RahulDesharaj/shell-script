#!/bin/bash

NAMES=("mongodb" "web" "catalouge" "mysql" "redis" "rabbitmq" "shipping" "payment" "dispatch" "user" "cart")

INSTANCETYPE=""
IMAGE_ID=ami-03265a0778a880afb
SECURITY_GROUP_ID=sg-04c41dde9b1452d4c
DOMAIN_NAME=rahuldesharaju.online



for i in "${NAMES[@]}"

do

    echo "NAMES : $i"

    

    if [[ $i == "mongodb" || $i == "mysql" ]]
    then

        INSTANCETYPE="t3.medium"
    else
        INSTANCETYPE="t2.micro"
    fi     

    echo "creating $i instance"
    IP_ADDRESS=$(aws ec2 run-instances --image-id $IMAGE_ID  --instance-type $INSTANCE_TYPE --security-group-ids $SECURITY_GROUP_ID --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$i}]" | jq -r '.Instances[0].PrivateIpAddress')
    echo "created $i instance: $IP_ADDRESS" 


    aws route53 change-resource-record-sets --hosted-zone-id Z06677163UV3U8W515927 --change-batch '
    {
            "Changes": [{
            "Action": "CREATE",
                        "ResourceRecordSet": {
                            "Name": "'$i.$DOMAIN_NAME'",
                            "Type": "A",
                            "TTL": 300,
                            "ResourceRecords": [{ "Value": "'$IP_ADDRESS'"}]
                        }}]
    }
    '  

done

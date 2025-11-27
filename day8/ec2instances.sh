#!/bin/bash

INSTANCE_TYPE="t2.micro"
AMI_ID="ami-0ecb62995f68bb549"
KEY_NAME="NAVEEDIQBAL"
SECURITY_GROUP_ID="sg-0001e493ced8228cb"
INSTANCE_NAME="naveed003"

aws ec2 run-instances \
  --image-id $AMI_ID \
  --instance-type $INSTANCE_TYPE \
  --key-name $KEY_NAME \
  --security-group-ids $SECURITY_GROUP_ID \
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$INSTANCE_NAME}]" \
  >/dev/null 2>&1

echo "✅ EC2 instance '$INSTANCE_NAME' launched successfully."



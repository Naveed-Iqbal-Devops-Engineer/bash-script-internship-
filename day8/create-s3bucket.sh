#!/bin/bash

# Define variables
BUCKET_NAME="new-bucket-naveediqbal03-$(date +%s)"
REGION="us-east-1"

# Create S3 bucket
aws s3api create-bucket \
  --bucket "$BUCKET_NAME" \
  --region "$REGION"
  echo "create succesfully"

#!/bin/bash
region=$1
name=$2
path=$3
aws --region $region ec2 import-key-pair \
    --key-name "$name" \
    --public-key-material "fileb://$path" > /dev/null

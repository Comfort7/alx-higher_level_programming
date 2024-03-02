#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

URL=$1

response=$(curl -s -o /dev/null -w "%{http_code}" "$URL")
echo "$response"

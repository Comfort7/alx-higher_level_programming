#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

URL=$1

response=$(curl -s -i -X OPTIONS "$URL" | grep "Allow:" | sed 's/Allow: //')

echo "$response"

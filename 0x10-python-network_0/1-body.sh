#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

URL=$1

response=$(curl -s -o response.txt -w "%{http_code}" "$URL")

if [ "$response" -eq 200 ]; then
    cat response.txt
else
    echo "Failed to retrieve response. Status code: $response"
fi

rm -f response.txt

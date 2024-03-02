#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <URL> <filename>"
    exit 1
fi

URL=$1
FILENAME=$2

response=$(curl -s -X POST -H "Content-Type: application/json" -d @"$FILENAME" "$URL")

echo "$response"

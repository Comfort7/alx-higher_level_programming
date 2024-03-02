#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

URL=$1

response=$(curl -s -w "%{size_download}" -o /dev/null "$URL")

echo "Response body size: $response bytes"


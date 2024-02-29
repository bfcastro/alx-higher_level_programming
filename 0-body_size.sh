#!/bin/bash

#Check if the url argument is provided
if [$# -ne 1]; then
	echo "Usage: $0 <URL>"
	exit 1
fi

URL=$1

BODY_SIZE=$(curl -s -w "%{size_download}" -o /dev/null $URL)

#Displays the body size
echo "Body size of $URL is $BODY_SIZE bytes"

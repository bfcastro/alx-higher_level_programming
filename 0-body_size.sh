#!/bin/bash

#Check if the url argument is provided
if [$# -ne 1]; then
	echo "Usage: $0 <URL>"
	exit 1
fi

#Stores the provided URL as the first argument URL=$1
#Use curl to send a request to the URL and retrieve the body size
# -s option is used to suppress progress meter
# -w option is used to specify output format, %s gives the size in bytes

BODY_SIZE=$(curl -s -w "%{size_download}" -o /dev/null $URL)

#Displays the body size
echo "Body size of $URL is $BODY_SIZE bytes"

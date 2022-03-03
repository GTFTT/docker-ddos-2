#!/bin/bash

CONTAINERS_IDS_STRING=$(docker ps --filter name=DDoS_Attacker -q)

echo IDS to stop: $CONTAINERS_IDS_STRING
echo Length: ${#CONTAINERS_IDS_STRING}

# Check if array length is greater than 0
if [ ${#CONTAINERS_IDS_STRING} -gt 1 ]
then
  docker container stop $CONTAINERS_IDS_STRING
  docker rm $CONTAINERS_IDS_STRING
fi

# Print current directory
# pwd
# echo $PATH


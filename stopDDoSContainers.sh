#!/bin/bash

CONTAINERS_IDS=$(docker ps --filter name=DDoS_Attacker -q)

echo IDS to stop: $CONTAINERS_IDS
echo Length: ${#CONTAINERS_IDS[@]}

# Check if array length is greater than 0
if [ ${#CONTAINERS_IDS[@]} -gt 1 ]
then

  docker container stop $CONTAINERS_IDS
  docker rm $CONTAINERS_IDS
fi

# Print current directory
# pwd
# echo $PATH


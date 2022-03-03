#!/bin/bash

#Run this script in directory where it is located
cd "$(dirname "$0")"

MIN_NUM=0
MAX_NUM=4

randomNumber=$(( $RANDOM % $MAX_NUM + $MIN_NUM ))
#randomNumber=$(( $(od -An -N4 -i < /dev/urandom) % $MAX_NUM + $MIN_NUM ))

# Script number:
echo Current datetime: $(date +'%m/%d/%Y') $(date +'%r')
echo Launching script: $randomNumber

#Stop old DDoS containers
echo Stopping old containers...
bash ./stopDDoSContainers.sh

# Run new DDoS containers
echo Starting new containers...
docker-compose --file ./lists/list_$randomNumber/docker-compose.yml up -d

echo ------------------

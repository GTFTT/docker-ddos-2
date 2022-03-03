#!/bin/bash
MIN_NUM=0
MAX_NUM=4

randomNumber=$(( $RANDOM % $MAX_NUM + $MIN_NUM ))
#randomNumber=$(( $(od -An -N4 -i < /dev/urandom) % $MAX_NUM + $MIN_NUM ))

# Script number:
echo Launching script: $randomNumber

#Stop old DDoS containers
echo Stopping old containers...
bash ./stopDDoSContainers.sh

# Run new DDoS containers
echo Starting new containers...
docker-compose --file ./lists/list_$randomNumber/docker-compose.yml up -d

#!/bin/bash

#Run this script in directory where it is located
cd "$(dirname "$0")"

## Add path for my commands
#PATH=$PATH:/bin:/usr/bin:docker-compose
#export PATH

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
/usr/local/bin/docker-compose --file ./lists/list_$randomNumber/docker-compose.yml up -d

echo ------------------

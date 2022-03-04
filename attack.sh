#!/bin/bash

#Run this script in directory where it is located
cd "$(dirname "$0")"

## Add path for my commands
#PATH=$PATH:/bin:/usr/bin:docker-compose
#export PATH

MIN_NUM=0
MAX_NUM=0
TARGETS_DIRECTORY=../check-targets/attackTargets
TARGET_LISTS_COUNT_FILE=$TARGETS_DIRECTORY/lists/lists_count.txt
if [ -d "$TARGETS_DIRECTORY" ];
  then
    MAX_NUM=$(head -n 1 $TARGET_LISTS_COUNT_FILE)
    echo Number of loaded lists from: $TARGET_LISTS_COUNT_FILE
    echo Number of lists: "$MAX_NUM"
  else
    MAX_NUM=4
fi


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


if [ -d "$TARGETS_DIRECTORY" ];
  then
    echo "$TARGETS_DIRECTORY is available;"
    /usr/local/bin/docker-compose --file $TARGETS_DIRECTORY/lists/list_$randomNumber/docker-compose.yml up -d
  else
    echo "External targets directory is missing, using default one;"
    /usr/local/bin/docker-compose --file ./lists/list_$randomNumber/docker-compose.yml up -d
fi


echo ------------------

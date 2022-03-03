#!/bin/bash
#echo
MIN_NUM=0
MAX_NUM=10

randomNumber=$(( $RANDOM % $MAX_NUM + $MIN_NUM ))
# Launch appropriate script:

echo Launching script: $randomNumber
bash ./lists/list_$randomNumber/do_something.sh


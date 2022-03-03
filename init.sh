#!/bin/bash
# Initialize timer to launch automatic attacks for a new targets every _n_ amount of time
# Container name is important! Do not change it is used to remove them later (DDoS_Attacker_...)

# How to use chron: https://www.digitalocean.com/community/tutorials/how-to-use-cron-to-automate-tasks-ubuntu-1804
# Check status: sudo service chron status

# Start cron, used as a timer
sudo service cron start

# Should be launched by `cron` timer
# bash ./attack.sh

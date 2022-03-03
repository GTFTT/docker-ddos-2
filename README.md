# docker-ddos-2
This is improved version of DDoS attacker


# How to launch
 - git clone
 - sudo apt update && sudo apt upgrade && sudo apt-get install cron
 - bash ./init.sh
 - See how to use [cron](https://www.digitalocean.com/community/tutorials/how-to-use-cron-to-automate-tasks-ubuntu-1804)
 - Edit crontab: `crontab -e`
 - Exaple, relaunch each minute: `* * * * * /bin/bash /home/gt/projects/temp/docker-ddos-2/attack.sh >> /home/gt/projects/temp/docker-ddos-2/attack.log`

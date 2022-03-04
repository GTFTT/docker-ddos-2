# docker-ddos-2
This is improved version of DDoS attacker. This version is supposet to relauch docker attackes every minute.


# How to launch
 - git clone
 - sudo apt update && sudo apt upgrade && sudo apt-get install cron
 - bash ./init.sh
 - See how to use [cron](https://www.digitalocean.com/community/tutorials/how-to-use-cron-to-automate-tasks-ubuntu-1804)
 - Edit crontab: `crontab -e`
 - Exaple, relaunch each minute: `* * * * * /bin/bash /home/your_user/projects/docker-ddos-2/attack.sh >> /home/your-user/projects/docker-ddos-2/attack.log`

![image](https://user-images.githubusercontent.com/48696470/156597302-6552bc15-0619-4797-adb2-5edb68eac15f.png)

![image](https://user-images.githubusercontent.com/48696470/156597217-051961c7-4002-4c2f-ad6d-1c112bef015d.png)

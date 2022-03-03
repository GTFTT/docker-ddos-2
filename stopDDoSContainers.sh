CONTAINERS_IDS=$(docker ps --filter name=DDoS_Attacker -q)

docker container stop $CONTAINERS_IDS
docker rm $CONTAINERS_IDS

docker stop $(docker ps -a -q)
docker rm $(docker ps -a q)
docker system prune -f
docker network prune -f

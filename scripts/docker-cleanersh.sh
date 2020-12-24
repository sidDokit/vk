#!/bin/bash

docker stop $(docker ps -aq)
docker rmi -f $(docker images -q)
docker rm -v $(docker ps -aq)
docker system prune
docker volume prune -f
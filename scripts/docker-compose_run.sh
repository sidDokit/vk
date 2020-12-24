#!/bin/bash
cd /home/ubuntu/deploy
docker-compose build
# docker run -d --name webapi1 -p 80:80 -p 433:433 siddokit/webapp
#!/bin/bash

docker-compose down
docker rm container.portal.vidlist.ai
docker rmi image.portal.vidlist.ai
docker network rm vidlist-portal-network

echo "Exit Successfully."
#!/bin/bash

docker-compose down

echo "Removing container..."
docker rm container-name                # Update container name

echo "Removing image..."
docker rmi image-name                   # Update image name

# Remove network
echo "Removing network..."
docker network rm your-network-name     # Update network name

echo "Exit Successfully."
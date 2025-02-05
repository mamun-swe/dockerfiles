#!/bin/bash

# Stop all running containers
echo "Stopping all running containers..."
docker-compose down

# Remove network
echo "Removing unused networks..."
docker network rm your-network-name                 # Update network name

# Remove image
echo "Removing unused Docker images..."
docker rmi image-name                               # Update image name

# Build and start the containers
echo "Building and starting the containers..."
docker-compose up --build -d

echo "Containers are up and running!"

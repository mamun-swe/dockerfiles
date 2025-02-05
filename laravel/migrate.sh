#!/bin/bash

# Ensure script is executable
chmod +x migrate.sh

# Set the container name (update if different)
CONTAINER_NAME="container-name"                                       # Update container name

# Run migrations inside the Docker container
echo "Running migrations inside container: $CONTAINER_NAME..."
docker exec -it $CONTAINER_NAME php artisan migrate --force

# Optional: Run seeders (uncomment if needed)
# docker exec -it $CONTAINER_NAME php artisan db:seed --force

echo "Migration completed successfully!"

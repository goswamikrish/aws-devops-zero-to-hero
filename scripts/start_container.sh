#!/bin/bash
set -e

CONTAINER_NAME="simple-python-flask-app"
IMAGE_NAME="krishsoh/simple-python-flask-app:latest"

echo "Removing ALL containers..."
docker rm -f $(docker ps -aq) || true

echo "Restarting Docker to free ports..."
systemctl restart docker

echo "Pulling latest image..."
docker pull $IMAGE_NAME

echo "Running container..."
docker run -d -p 5000:5000 --name $CONTAINER_NAME $IMAGE_NAME

echo "Deployment completed successfully."

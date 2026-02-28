#!/bin/bash
set -e

CONTAINER_NAME="simple-python-flask-app"
IMAGE_NAME="krishsoh/flask-app"

echo "Stopping old container if exists..."
docker stop $CONTAINER_NAME || true
docker rm $CONTAINER_NAME || true

echo "Pulling image..."
docker pull $IMAGE_NAME

echo "Running container..."
docker run -d -p 5000:5000 --name $CONTAINER_NAME $IMAGE_NAME

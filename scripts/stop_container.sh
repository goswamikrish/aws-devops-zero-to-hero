#!/bin/bash
set -e

echo "Stopping container if exists..."

docker stop simple-python-flask-app || true
docker rm simple-python-flask-app || true

echo "Done."

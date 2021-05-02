#!/usr/bin/env bash
set -e

echo "Starting deploy"
echo "${DOCKER_PASSWORD}" | docker login --username \"${DOCKER_LOGIN}\" --password-stdin
docker tag web1066-the-app $DOCKER_LOGIN/web1066-the-app:latest
docker push $DOCKER_LOGIN/web1066-the-app:latest
#!/bin/bash

# Check for the arguments numbers
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <GitHub repository> <Docker Hub repository>"
    exit 1
fi

# Login to Docker Hub
docker login -u $DOCKER_USER -p $DOCKER_PWD

# Clone GitHub repo
git clone "$1" app

cd app

docker build -t "$2" .

docker push "$2"

# Cleanup
cd ..
rm -rf app

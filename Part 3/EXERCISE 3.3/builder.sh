#!/bin/bash

# Check for the number of arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <GitHub repository> <Docker Hub repository>"
    exit 1
fi

# Clone GitHub repository given in 1st argument
git clone "$1" app

# Navigate to the root of the repository
cd app

# Build Docker image
docker build -t "$2" .

# Push Docker image to Docker Hub to given repository in 2nd argument
docker push "$2"

# Cleanup by removing the cloned repository
cd ..
rm -rf app

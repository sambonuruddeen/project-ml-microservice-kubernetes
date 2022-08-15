#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=sambonuruddeen/udacityproject

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u sambonuruddeen
docker image tag udacityproject $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath

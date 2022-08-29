#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag jpmake_prediction jpunjal/jpmake-prediction:v1.0.0
docker images
# Log into the Dockerhub from your local terminal
docker login

# Step 3:
# Push image to a docker repository
docker push jpunjal/jpmake-prediction:v1.0.0

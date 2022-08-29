#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="jpunjal/jpmake-prediction:v1.0.0"

# Assuming the Kubernetes cluster is ready
#kubectl get nodes
# Step 2
# Run the Docker Hub container with kubernetes
# Deploy an App from the Dockerhub to the Kubernetes Cluster
#kubectl create deploy jpmake-prediction --image=jpunjal/jpmake-prediction:v1.0.0
# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods
# Step 4:
# Forward the container port to a host
kubectl port-forward pod/jpmake-prediction-7856789956-d6slf --address 0.0.0.0 8080:80

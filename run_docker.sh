#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=jpmake_prediction ./

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run -p 8080:80 jpmake_prediction 

#docker run -p 8080:80 --log-opt mode=non-blocking --log-opt max-buffer-size=4m jpmake_prediction  >> output.log

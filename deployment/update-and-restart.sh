#!/bin/bash

# Stop and remove the running container
docker stop site
docker rm site

# Pull the latest image from DockerHub
docker pull woods245/ceg3120proj4:latest

# Start a new container with the latest image
docker run -d -p 8000:80 --name site woods245/ceg3120proj4:latest

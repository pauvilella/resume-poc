#!/bin/sh
# Pull latest version of the image
docker pull pauvilella07/web-resume
# Remove unused images
docker image prune -f
# Stop the container
docker stop container-resume
# Remove the container
docker rm container-resume
# Recreate the container
docker run -p 80:80 -d --name container-resume pauvilella07/web-resume

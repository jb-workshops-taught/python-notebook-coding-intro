#!/bin/bash

# Stops proxy, tmpnb, and all running docker containers.
# Removes the running containers, so nothing is left.
# Then you can safely either build a fresh docker image and drop the old, or simply restart.

echo "Stopping Jupyter Proxy and TmpNb, and all child containers"

docker stop tmpnb
docker stop proxy
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)


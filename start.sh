#!/bin/sh

# Run the command once to build the Docker image
# Run again if Dockerfile is changed
# docker build -t cs247g-server .

docker run -it -v "$(pwd)"/server:/server -p 25565:25565 cs247g-server

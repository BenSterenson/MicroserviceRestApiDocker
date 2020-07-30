#!/usr/bin/env bash

CONTAINER_NAME="sample"

docker build -t $CONTAINER_NAME .

if [ "$(docker ps -aq -f name=$CONTAINER_NAME)" ]; then
    docker stop $CONTAINER_NAME
    docker rm $CONTAINER_NAME
fi

docker run -p 9090:9090 -d --name $CONTAINER_NAME $CONTAINER_NAME

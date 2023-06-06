#!/bin/bash
DOCKER_NAME="vscode-debug-tutorial"
DOCKER_IMAGE_NAME="vscode-debug-tutorial"

if [ ! "$(docker ps -q -f name=$DOCKER_IMAGE_NAME)" ]; then
    echo Start $DOCKER_IMAGE_NAME ...
    VOLUME="$(pwd)/:/catkin_ws/src/catkin_ws/src/vscode-debug-tutorial"

    docker run \
        --rm \
        -it \
        --net=host \
        -v $VOLUME \
        --name $DOCKER_IMAGE_NAME \
        $DOCKER_NAME /bin/bash
else
    echo Connect to $DOCKER_IMAGE_NAME ...
    docker exec -ti $DOCKER_IMAGE_NAME /bin/bash
fi
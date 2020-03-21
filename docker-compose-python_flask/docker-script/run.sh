#!/bin/bash
declare -a COMPOSE_FILES=("docker-compose-v0.0.1.yml")

for i in "${COMPOSE_FILES[@]}"
do
    echo "$i"
    docker-compose -f $i up --no-build -d
done
 
#docker-compose up

#!/bin/bash
TAG=$1

REPO=docker-reg.niexiaoxu.com:55688
CONTAINER=python-flask
DATE=`date +%Y%m%d`
GIT_HASH=$(git rev-parse --short HEAD)
if [ "$TAG" == "" ]; then
    TAG="$DATE-$GIT_HASH"
fi
DOCKER_IMAGE=$REPO/$CONTAINER:$TAG


DIR="$( cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BUILDROOT=$DIR/..

echo "TAG:[$TAG]"
echo "execute dir: '$DIR'"


cmd="docker build -t $DOCKER_IMAGE  -f $DIR/Dockerfile $BUILDROOT"
echo $cmd
eval $cmd

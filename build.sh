#!/bin/bash

source .env

echo -e "do-stablediffusion version ${VERSION}\n" > Container-Root/version.txt

# Build Docker image
CMD="docker image build ${BUILD_OPTS} -t ${REGISTRY}${IMAGE}${TAG} ."
eval "$CMD"


#!/bin/bash

echo 'Docker Login - BEGIN'
docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"
echo 'Docker Login - END'

echo 'Docker Push - BEGIN'
docker push sarataha/testapp:$TRAVIS_TAG
echo 'Docker Push - END'

echo 'Docker Run - BEGIN'
docker pull sarataha/testapp:$TRAVIS_TAG
docker run -d sarataha/testapp:$TRAVIS_TAG
echo 'App is now up and running'

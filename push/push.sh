#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="app"

echo "** Logging in ***"
docker login -u amsmzn -p Amsmzn@123
echo "*** Tagging image ***"
docker tag $IMAGE:latest amsmzn/$IMAGE:latest
echo "*** Pushing image ***"
docker push amsmzn/$IMAGE:latest

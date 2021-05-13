#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"
dockerusername="niltarlekar"

echo "** Logging in ***"
docker login -u $dockerusername -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG $dockerusername/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push $dockerusername/$IMAGE:$BUILD_TAG

#!/bin/bash

# Copy the new jar to the build location
cp -f ../../java-app/target/*.jar ./

echo "****************************"
echo "** Building Docker Image ***"
echo "****************************"

cd /home/jenkins/jenkins-data/dockerpipeline/jenkins/build && docker-compose -f docker-compose-build.yml build --no-cache

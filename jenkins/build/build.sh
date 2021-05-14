#!/bin/bash

# Copy the new jar to the build location
cp -f ../../java-app/target/*.jar ./

echo "****************************"
echo "** Building Docker Image ***"
echo "****************************"
WORKSPACE=/home/jenkins/jenkins-data/jenkins_home/workspace/pipeline-docker-mvn
cd jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache

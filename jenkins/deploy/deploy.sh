#!/bin/bash


echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /home/jenkins/prod /tmp/.auth produser@192.168.0.115:/tmp/.auth
scp -i /home/jenkins/prod  ./jenkins/deploy/publish produser@192.168.0.115:/tmp/publish
ssh -i /home/jenkins/prod produser@192.168.0.115 "/tmp/publish"

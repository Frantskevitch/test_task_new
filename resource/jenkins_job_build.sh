#!/bin/bash
until curl --output /dev/null --silent --head --fail http://jenkins:8080
do
sleep 1
done && jenkins-jobs --conf /opt/jenkins_jobs_config.ini update /opt/boxfuse-sample-java-war-hello-build.yaml


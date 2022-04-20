#! /bin/bash

cd tomcat
git clone  https://github.com/atifsaddique211f/spring-maven-sample.git
cd spring-maven-sample
docker run -it --rm -v "$PWD":/app -w /app demo/maven:3.3-jdk-8 mvn clean install
docker build -f Dockerfile -t demo/tomcat:8 .
docker run --rm -p 8080:8080 demo/tomcat:8


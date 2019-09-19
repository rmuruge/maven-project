#! /usr/bin/bash

echo "Build Maven Project..."
docker build -t maven-project:v1 .

echo "Tagging the image to latest"
docker tag maven-project:v1 rmuruge/maven-project:latest

echo "Push the image to docker hub"
docker push rmuruge/maven-project:latest

echo "Build completed."


#!/bin/bash
echo "Stop redis and flask containers ..."
docker stop redis flask

echo "Remove  redis and flask containers ..."
docker rm redis flask

echo "Start application ..."
docker-compose up -d
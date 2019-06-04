#!/bin/bash

docker login
docker build --tag polaris_dev .
docker tag polaris_dev auvic/polaris:polaris_dev

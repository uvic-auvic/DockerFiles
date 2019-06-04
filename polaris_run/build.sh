#!/bin/bash

docker login
docker build --tag polaris_run .
docker tag polaris_run auvic/polaris:polaris_run

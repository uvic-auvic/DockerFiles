#!/bin/bash

docker login
docker build --tag polaris_shell .
docker tag polaris_shell auvic/polaris:polaris_shell

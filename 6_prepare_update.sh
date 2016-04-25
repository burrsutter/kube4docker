#!/bin/bash

echo 'docker build -t burr/mynode:v2 .'
cd node-demo
docker build -t burr/mynode:v2 .
cd ..

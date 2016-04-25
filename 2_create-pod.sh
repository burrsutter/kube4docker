#!/bin/bash

echo 'kubectl --namespace=kubedemo run mynode --image=burr/mynode:v1 --port=8000'
kubectl --namespace=kubedemo run mynode --image=burr/mynode:v1 --port=8000
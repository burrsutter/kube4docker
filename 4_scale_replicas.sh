#!/bin/bash

echo 'kubectl --namespace=kubedemo scale rc mynode --replicas=3'
kubectl --namespace=kubedemo scale rc mynode --replicas=3

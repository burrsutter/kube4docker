#!/bin/bash

echo 'kubectl --namespace=kubedemo expose rc mynode --type="LoadBalancer"'
kubectl --namespace=kubedemo expose rc mynode --type="LoadBalancer"
#!/bin/bash

# echo 'kubectl --namespace=kubedemo rolling-update mynode --image=burr/mynode:v2 --update-period=5s'
# kubectl --namespace=kubedemo rolling-update myvertx --image=burr/myvertx:v2 --update-period=3s
kubectl --namespace=kubedemo set image deployment/myvertx myvertx=burr/myvertx:v1
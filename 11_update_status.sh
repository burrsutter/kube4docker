#!/bin/bash

kubectl --namespace=kubedemo rollout status deployment/myvertx

# kubectl --namespace=kubedemo rollout undo deployment/myvertx
# kubectl --namespace=kubedemo rollout undo deployment/myvertx --to-revision=2
#!/bin/bash

# back in the days of replication controllers
# command = 'kubectl --namespace=kubedemo rolling-update myvertx --image=burr/myvertx:v2 --update-period=3s'

# now with deployments
command='kubectl --namespace=kubedemo set image deployment/myvertx myvertx=burr/myvertx:v2'

echo $command
$command

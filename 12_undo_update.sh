#!/bin/bash

command='kubectl --namespace=kubedemo rollout undo deployment/myvertx'
 echo $command
$command

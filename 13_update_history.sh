#!/bin/bash

command='kubectl --namespace=kubedemo rollout history deployment myvertx'
echo $command
$command
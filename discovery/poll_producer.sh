#!/bin/bash
while true
do 
  curl --connect-timeout 1 -s 'http://producer-discoverydemo.192.168.99.101.nip.io/'
  sleep 1;
done

#!/bin/bash

# oc login 10.1.2.2:8443 --username=admin --password=admin
oc login -u system:admin

# note: using minishift for the oc login
# you can also "oc project kubedemo" to make the default namespace/project sticky

#!/bin/bash

username=$1
echo username: $username
sfdx force:org:create -s -f config/project-scratch-def.json -a $username --wait 2
sfdx force:source:push -u $username
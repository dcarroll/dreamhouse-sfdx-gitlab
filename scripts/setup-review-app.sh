#!/bin/bash

username=$1
echo username: $username
sfdx force:user:permset:assign -n dreamhouse -u $username
sfdx force:data:tree:import -p data/sample-data-plan.json -u $username

#!/bin/bash

username=$1
echo username: $username
sfdx force:apex:test:run -c -d ~/junit -r junit -u $username --wait 5

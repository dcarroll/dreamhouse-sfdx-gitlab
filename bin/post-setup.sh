#!/usr/bin/env bash

TARGET_ORG_ALIAS=${1:-}
STAGE=${2:-}

### Not required
### This script will execute after the org has been setup
echo "TARGET_ORG_ALIAS: "$TARGET_ORG_ALIAS
echo "STAGE: "$STAGE
sfdx force:org:display
sfdx force:user:permset:assign -n dreamhouse
sfdx force:data:tree:import -p data/sample-data-plan.json
sfdx force:apex:test:run -w 3
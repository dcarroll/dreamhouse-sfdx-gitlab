#!/bin/bash

openssl enc -nosalt -aes-256-cbc -d -in assets/server.key.enc -out assets/server.key -base64 -K $DECRYPTION_KEY -iv $DECRYPTION_IV
sfdx force:auth:jwt:grant --clientid $HUB_CONSUMER_KEY --jwtkeyfile assets/server.key --username $HUB_SFDC_USER --setdefaultdevhubusername -a $HUB_ORG_ALIAS

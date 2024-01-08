#!/bin/bash

ENCODED_POLICY=$(cat newpolicy.json | base64 -w0)
#echo $ENCODED_POLICY

sed -i "s/^NEWPOLICY=.*/NEWPOLICY=$ENCODED_POLICY/" .env
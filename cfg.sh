#!/bin/bash
#
if [ -z "$*" ]; then
  region="ussouth"
else
  region=$1;
fi

if [ $region = "useast" ] ; then
  # US-East - API key
  credF=wa-credentials-api.txt
  url="https://gateway-wdc.watsonplatform.net/assistant/api"
  waWorkspaceId=7d6e2a83-c637-41d5-abf0-c4d66a7beab2
else
  # US-South credentials - username:password
  credF=wa-credentials-dev.txt
  url="https://gateway.watsonplatform.net/assistant/api"
  waWorkspaceId=7ac129fa-b33e-464f-b853-85cecec6a318

fi
#
#
waApiVersion=2018-09-20
# DO NOT CHANGE
useCred=`cat $credF`

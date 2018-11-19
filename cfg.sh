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
  waWorkspaceId=<WA_WORKSPACD_ID>
else
  # US-South credentials - username:password
  credF=wa-credentials-dev.txt
  url="https://gateway.watsonplatform.net/assistant/api"
  waWorkspaceId=<WA_WORKSPACD_ID>

fi
#
#
waApiVersion=2018-09-20
# DO NOT CHANGE
useCred=`cat $credF`

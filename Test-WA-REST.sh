#!/bin/bash
. cfg.sh $1
#
echo $useCred
curl -i -X POST -u $useCred --header "Content-Type:application/json" --data "{\"input\": {\"text\": \"\"}}" "$url/v1/workspaces/$waWorkspaceId/message?version=$waApiVersion" > wa_rest_resp_$region.txt

#!/bin/bash

# arguments to the script
ORG="$1"
SCOPE="$2"
LANE="$3"
WSDIR="$4"

# BIT_CONFIG_ACCESS_TOKEN OR BIT_CONFIG_USER_TOKEN
BIT_TOKEN="$5" 

# change to working directory before running the remaining commands
cd "${WSDIR}"

# Choose one of the following options

# Option 1: Hard Delete
bit lane remove "${ORG}.${SCOPE}/${LANE}" --remote --silent --force 2> /dev/null
if [ $? -ne 0 ]; then
    echo "Error while removing bit lane. Lane may not exist"
fi

# Option 2: Soft Delete
curl -X POST "https://api.v2.bit.cloud/graphql" \
-H "Content-Type: application/json" \
-H "Authorization: Bearer $BIT_TOKEN" \
-d '{"query": "mutation DELETE_LANE($id: String!) { deleteLane(id: $id) }", "variables": {"id": "'"${ORG}.${SCOPE}/${LANE}"'"}}'

#!/bin/bash

# arguments to the script
LANE_NAME="$1"
WSDIR="$2"

# environment variables
ORG="${ORG}"
SCOPE="${SCOPE}"

# try to remove the bit lane
bit lane remove ${ORG}.${SCOPE}/${LANE_NAME} --remote --silent 2> /dev/null
if [ $? -ne 0 ]; then
    echo "Error while removing bit lane. Lane may not exist"
fi

# change to working directory before running the remaining commands
cd ${WSDIR}

bit status --strict
bit lane create ${LANE_NAME}
bit snap -m "CI"
bit export

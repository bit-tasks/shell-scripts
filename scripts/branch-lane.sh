#!/bin/bash

# arguments to the script
LANE_NAME="$1"
WSDIR="$2"

# change to working directory before running the remaining commands
cd "${WSDIR}"

bit status --strict
bit lane create ${LANE_NAME}
bit snap -m "CI" --build
bit export

#!/bin/bash

# When using this script, ensure that you remove "bit install" command from the bit-init script, if you us it prior to running this one.

# Arguments to the script
WSDIR="$1"
LANE_NAME="$2"
BRANCH_NAME="$3"

# Change to working directory before running the commands
cd "${WSDIR}"

# Run the commands

bit import -x
bit lane import "${LANE_NAME}"
bit init --reset-lane-new

# Set git configuration
git config --global user.name "${GIT_USER_NAME}"
git config --global user.email "${GIT_USER_EMAIL}"

# Git operations
git checkout -b "${BRANCH_NAME}"
git add .
git commit -m "Committing the latest updates from lane: ${LANE_NAME} to the Git branch (automated) [skip-ci]" 2> /dev/null
if [ $? -ne 0 ]; then
    echo "Error while committing changes"
fi

git push origin "${BRANCH_NAME}" -f

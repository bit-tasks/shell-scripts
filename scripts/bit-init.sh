#!/bin/bash

# arguments to the script
BIT_CONFIG_USER_TOKEN="$1"
WSDIR="$2"

# run the commands
npx @teambit/bvm install
export PATH="${HOME}/bin:${PATH}" # This step may change depending on your CI runner

bit config set interactive false
bit config set analytics_reporting false
bit config set anonymous_reporting false
bit config set user.token ${BIT_CONFIG_USER_TOKEN}

# change to working directory before running bit install
cd ${WSDIR}
bit install

#!/bin/bash

# arguments to the script
WSDIR="$1"

# check if BIT_CONFIG_USER_TOKEN is set
if [ -z "${BIT_CONFIG_USER_TOKEN}" ]; then
  echo "BIT_CONFIG_USER_TOKEN environment variable is not set. Exiting..."
  exit 1
fi

# run the commands
npx @teambit/bvm install
export PATH="${HOME}/bin:${PATH}" # This step may change depending on your CI runner

# set bit configuration
bit config set interactive false
bit config set analytics_reporting false
bit config set anonymous_reporting false
bit config set user.token ${BIT_CONFIG_USER_TOKEN}

# change to working directory before running bit install
cd ${WSDIR}
bit install

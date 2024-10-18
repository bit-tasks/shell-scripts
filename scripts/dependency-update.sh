#!/bin/bash

# arguments to the script
WSDIR="$1"

# branch name
BRANCH_NAME="bit-dependency-update"

# change to working directory before running the commands
cd "${WSDIR}"

# Checkout the latest versions of all workspace components
bit checkout head --all

# Update environment dependencies. Optionally use glob pattern to filter specific components (if any specified)
bit envs update

# Update external dependencies. Optionally use version-update-policy (patch, minor, major, or semver)
bit update -y 

# check git status
STATUS_OUTPUT=$(git status --porcelain)

if [[ ! -z "${STATUS_OUTPUT}" ]]; then
    git config --global user.name "${GIT_USER_NAME}"
    git config --global user.email "${GIT_USER_EMAIL}"
    git checkout -b "${BRANCH_NAME}"
    git add .
    git commit -m "Update Bit envs and outdated dependencies"
    git push origin "${BRANCH_NAME}" --force

    # Todo: Create a Pull Request using the API/CLI of your CI platform
fi

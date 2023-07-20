#!/bin/bash

# arguments to the script
G_NAME="$1"
G_EMAIL="$2"
WSDIR="$3"

# change to working directory before running the commands
cd ${WSDIR}

# run the commands
git config --global user.name "${G_NAME}"
git config --global user.email "${G_EMAIL}"
git add .bitmap

# try to commit the changes
git commit -m "update .bitmap with new component versions (automated). [skip-ci]" 2> /dev/null
if [ $? -ne 0 ]; then
    echo "Error while committing changes"
fi

git push

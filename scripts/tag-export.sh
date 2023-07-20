#!/bin/bash

# argument to the script
WSDIR="$1"

# change to working directory before running the commands
cd ${WSDIR}

# run the commands
bit tag -m "CI"
bit export

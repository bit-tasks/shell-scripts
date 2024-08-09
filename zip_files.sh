#!/bin/bash

# Ensure the downloads directory exists
mkdir -p downloads

# Create or overwrite the automating-component-releases.zip
zip -j downloads/automating-component-releases.zip \
    scripts/bit-init.sh \
    scripts/commit-bitmap.sh \
    scripts/pull-request.sh \
    scripts/lane-cleanup.sh \
    scripts/tag-export.sh \
    scripts/verify.sh

# Zip other individual files
zip -j downloads/branch-lane.zip \
    scripts/branch-lane.sh \
    scripts/lane-branch.sh
   
zip -j downloads/dependency-update.zip scripts/dependency-update.sh

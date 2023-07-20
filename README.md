# Shell Script Tasks for Bit and Git CI/CD Pipelines
Shell Script Tasks that you can use in Github Actions, AzureDevOps, GitLab and other CI/CD platforms.

## Setup Guide

1. You need to use variables (e.g envioronment variables `BIT_CONFIG_USER_TOKEN`, `GITHUB_TOKEN`) to share state between tasks based on your CI platform.  environment variable at the job level before running these tasks.
2. You need to pass the workspace root directory `ws-dir` for all the tasks and other parameters as required.

### Automating Component Release

- Initialize Bit - [bit-init.sh](/scripts/bit-init.sh) 
- Bit Verify Components - [verify.sh](/scripts/verify.sh)
- Bit Tag and Export - [tag-export.sh](/scripts/tag-export.sh)
- Bit Pull Request Build - [pull-request.sh](/scripts/pull-request.sh)
- Commit Bitmap - [commit-bitmap.sh](/scripts/commit-bitmap.sh)

  :arrow_down: [Download Files](https://github.com/bit-tasks/shell-scripts/raw/main/downloads/automating-component-releases.zip)

### Update Workspace Components, External Dependencies and Envs

- Dependency Update - [dependency-update.sh](/scripts/dependency-update.sh)

  :arrow_down: [Download Files](https://github.com/bit-tasks/shell-scripts/raw/main/downloads/dependency-update.zip)

### Sync Git Branches with Bit Lanes

- Branch Lane - [branch-lane.sh](/scripts/branch-lane.sh)

  :arrow_down: [Download Files](https://github.com/bit-tasks/shell-scripts/raw/main/downloads/branch-lane.zip)

Run these scripts by passing the parameters in order. For example:

```shell
./scripts/branch-lane.sh <gName> <gEmail> <wsdir>
```

## Contributor Guide

```
git commit -m "Update task"
git tag -a -m "action release" v1 --force
git push --follow-tags
```

# Shell Script Tasks for Bit and Git CI/CD Pipelines
Shell Script Tasks that you can use in Github Actions, AzureDevOps, GitLab and other CI/CD platforms.

**Note:** You may need to use variables (e.g envioronment, pipeline) to share state between tasks based on your CI platform.

## List of Scripts

- Initialize Bit - [bit-init.sh](/scripts/bit-init.sh) 
- Bit Verify Components - [verify.sh](/scripts/verify.sh)
- Bit Tag and Export - [tag-export.sh](/scripts/tag-export.sh)
- Bit Pull Request Build - [pull-request.sh](/scripts/pull-request.sh)
- Commit Bitmap - [commit-bitmap.sh](/scripts/commit-bitmap.sh)
- Dependency Update - [dependency-update.sh](/scripts/dependency-update.sh)
- Branch Lane - [branch-lane.sh](/scripts/branch-lane.sh)

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

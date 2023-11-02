# Shell Script Tasks for Bit and Git CI/CD Pipelines
Shell Script Tasks that you can use in Github Actions, AzureDevOps, GitLab and other CI/CD platforms.

## Setup Guide

1. You need to define the following environment variables in your CI platform and share them across the tasks.
    - `GIT_USER_NAME` - Your Git user name.
    - `GIT_USER_EMAIL` - Your Git email.
    - `BIT_CLOUD_ACCESS_TOKEN`([docs](https://bit.dev/reference/ci/other-ci#generating-an-access-token)) or `BIT_CONFIG_USER_TOKEN`([docs](https://bit.dev/reference/reference/config/bit-config/#modify-a-configuration-value)).
    - `BIT_CONFIG_ANALYTICS_REPORTING` - `"false"`
    - `BIT_CONFIG_ANONYMOUS_REPORTING` - `"false"`
    - `BIT_CONFIG_INTERACTIVE` - `"false"`
2. You need to pass the workspace root directory `ws-dir` for all the tasks. If your Bit workspace is at the root level, pass `"./"`.

### Automating Component Release

| Task                        | Shell Script Example                  |
|-----------------------------|---------------------------------|
| Initialize Bit          | [bit-init.sh](/scripts/bit-init.sh) |
| Bit Verify Components   | [verify.sh](/scripts/verify.sh) |
| Bit Tag and Export      | [tag-export.sh](/scripts/tag-export.sh) |
| Bit Pull Request Build  | [pull-request.sh](/scripts/pull-request.sh) |
| Bit Lane Cleanup        | [lane-cleanup.sh](/scripts/lane-cleanup.sh) |
| Commit Bitmap           | [commit-bitmap.sh](/scripts/commit-bitmap.sh) |

  :arrow_down: [Download Files](https://github.com/bit-tasks/shell-scripts/raw/main/downloads/automating-component-releases.zip)

### Update Workspace Components, External Dependencies and Envs

| Task                        | Shell Script Example                    |
|-----------------------------|-------------------------------|
| Dependency Update   |  [dependency-update.sh](/scripts/dependency-update.sh) |

  :arrow_down: [Download Files](https://github.com/bit-tasks/shell-scripts/raw/main/downloads/dependency-update.zip)

### Sync Git Branches with Bit Lanes

| Task                        | Shell Script Example                   |
|-----------------------------|-------------------------------|
| Branch Lane                 |  [branch-lane.sh](/scripts/branch-lane.sh) |

  :arrow_down: [Download Files](https://github.com/bit-tasks/shell-scripts/raw/main/downloads/branch-lane.zip)

Run these scripts by passing the parameters in order. For example:

```shell
./scripts/branch-lane.sh <wsdir>
```

## Contributor Guide

To create zip files use the below commands.

```bash
chmod +x zip_files.sh
bash ./zip_files.sh
```

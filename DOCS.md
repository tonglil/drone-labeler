Use this plugin to automatically manage GitHub labels to a repository.

## Config

The following parameters are used to configure the plugin:

* `file` - the label configuration file
* `branch` - regular expression to match the branch for processing labels (defaults to `^labels-ci`)
* `email` - the email used to author git commits _optional_ only required if trim is `true`
* `username` - the name used to author git commits _optional_ only required if trim is `true`
* `trim` - trim the label configuration file (defaults to `false`)
* `pr` - open a PR if there are changes after trimming (defaults to `false`)

The following secret values are used to configure the plugin:

* `GITHUB_TOKEN` - the GitHub token to use by `labeler` and to push commits to the repository

## Examples

Bare minimum:

```yaml
pipeline:
  drone-labeler:
    image: tonglil/drone-labeler
    secrets:
      - github_token

    file: labels.yaml
```

Full configuration that will trim the config file and open a PR with the trimmed config file changes:

```yaml
pipeline:
  drone-labeler:
    image: tonglil/drone-labeler
    secrets:
      - github_token

    file: labels.yaml
    branch: ^labels-ci
    email: drone@drone.io
    username: Drone
    trim: true
    pr: true
```

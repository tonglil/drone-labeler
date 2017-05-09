# drone-labeler

Drone plugin to apply and update labels of a GitHub repository automatically using the [`labeler` CLI tool][labeler].
For the usage information and a listing of the available options please take a look at [the docs](DOCS.md).

[labeler]: https://github.com/tonglil/labeler

## Development

The plugin is a bash script.

## Testing

Execute from the working directory with a `labels.yaml` configuration file:

```
docker run --rm \
  -e DRONE_BRANCH=master \
  -e GITHUB_TOKEN=${GITHUB_TOKEN} \
  -e PLUGIN_EMAIL="drone@drone.io" \
  -e PLUGIN_USERNAME="Drone" \
  -e PLUGIN_TRIM="true" \
  -e PLUGIN_PR="true" \
  -v $(pwd):$(pwd) \
  -w $(pwd) \
  tonglil/drone-labeler
```

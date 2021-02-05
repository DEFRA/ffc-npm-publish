# ffc-npm-publish
Docker image to publish to npm

## Usage
If the `VERSION` environment variable is passed, then the published package version will be overridden by the supplied value.  If not supplied, then the version in the `package.json` file will be used as is.

```
docker run --rm -v "$PWD:/node/app/" -e NPM_TOKEN=<token> -e VERSION=true defradigital/ffc-npm-publish
```

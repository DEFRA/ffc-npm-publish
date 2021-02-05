# ffc-npm-publish
Docker image to publish to npm

## Usage
If `TAG_NEXT` environment variable is set to true, then the published package will be tagged `next` to show it's in development.  If set to false (default) then the version in the `package.json` file will be used.

```
docker run --rm -v "$PWD:/node/app/" -e NPM_TOKEN=<token> -e TAG_NEXT=true defradigital/ffc-npm-publish
```

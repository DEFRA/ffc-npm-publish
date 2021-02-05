#! /bin/sh

# setup for npm credentials
echo "//registry.npmjs.org/:_authToken=$NPM_TOKEN" > ~/.npmrc

if [ "$TAG_NEXT" == "true" ]; then
  # if we want to publish a testing version
  cd /node/app/ \
    && npm install --unsafe-perm --no-optional \
    && npm publish --tag next
else
  # production publish, uses version in package.json
  cd /node/app/ \
    && npm install --unsafe-perm --no-optional \
    && npm publish
fi

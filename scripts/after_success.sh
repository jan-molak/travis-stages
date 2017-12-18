#!/bin/bash
set -e

echo "[SCRIPT] After Success :: Publish the packages to NPM"

if [ "$TRAVIS_PULL_REQUEST" != "false" ]; then
  echo "[STEP] Pull requests are not released to NPM."
  exit 0
fi

if [[ $TRAVIS_BRANCH != 'master' ]]; then
  echo "[STEP] Builds from a branch are not released to NPM"
  exit 0
fi

if [[ $TRAVIS_BRANCH == 'master' ]]; then
  echo "[STEP] Publish the artifacts and generate the changelog"
fi

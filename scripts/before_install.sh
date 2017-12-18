#!/bin/bash
set -e

echo "[SCRIPT] Before Install :: Lerna setup"

if [ "$TRAVIS_PULL_REQUEST" != "false" ]; then
  echo "[STEP] Building a pull request, there's nothing to do"
  exit 0
fi

if [[ $TRAVIS_BRANCH != 'master' ]]; then
  echo "[STEP] Building from the $TRAVIS_BRANCH branch, there's nothing to do"
  exit 0
fi

if [[ $TRAVIS_BRANCH == 'master' ]]; then
  echo "[STEP] Building from master..."
  echo "       - initialise and configure a git repo so that lerna-semantic-release works"
  exit 0
fi

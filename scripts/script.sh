#!/bin/bash
set -e

echo "[SCRIPT] Script :: regular or PR build"

if [ "$TRAVIS_PULL_REQUEST" != "false" ]; then
  echo "         - Verifying a pull request, BrowserStack is not available in this mode.";
  echo "         - see https://docs.travis-ci.com/user/pull-requests#Pull-Requests-and-Security-Restrictions";
  exit 0;
fi

if [ "$TRAVIS_PULL_REQUEST" = "false" ]; then
  echo "         - Verifying a master or branch build. BrowserStack is available in this mode.";
  exit 0;
fi

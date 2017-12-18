#!/bin/bash
set -e

echo "[SCRIPT] After Script :: Generate documentation"

if [ "$TRAVIS_PULL_REQUEST" != "false" ]; then
  echo "[STEP] Pull Request - generate the docs but don't publish them"
  exit 0
fi

if [[ $TRAVIS_BRANCH != 'master' ]]; then
  echo "[STEP] Branch Build - generate the docs but don't publish them"
  exit 0
fi

if [[ $TRAVIS_BRANCH == 'master' ]]; then
  echo "[STEP] Master Build - generate and publish the docs"
  exit 0
fi

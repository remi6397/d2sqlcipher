#!/usr/bin/env bash

if (( "$#" != 3 )); then
  echo "Please provide a valid git repo to push to and a correct branch name"
  exit 1
fi

rm -rf docs
dub build -b ddox -c no-lib
cd docs
git init
git add .
git commit -m 'Deployed doc'
git push --force --quiet "$1" master:$2

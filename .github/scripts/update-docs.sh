#!/usr/bin/env bash
set -e

git config --global user.email github-actions[bot]@users.noreply.github.com
git config --global user.name github-actions[bot]

git add */**/README.md
git commit -m 'docs: update auto-generated documentation [skip ci]' || export NO_UPDATES=true

if [ "$NO_UPDATES" != "true" ] ; then
    git push origin main
fi

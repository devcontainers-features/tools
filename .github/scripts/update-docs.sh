#!/usr/bin/env bash
set -e

git config --global user.email github-actions[bot]@users.noreply.github.com
git config --global user.name github-actions[bot]
git config pull.rebase false

branch=automated-documentation-update-$GITHUB_RUN_ID
git checkout -b $branch

message='Automated documentation update'

git add */**/README.md
git commit -m 'Automated documentation update [skip ci]' || export NO_UPDATES=true

if [ "$NO_UPDATES" != "true" ] ; then
    git push origin "$branch"
    gh pr create --title "$message" --body "$message"
fi

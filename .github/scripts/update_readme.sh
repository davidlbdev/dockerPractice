#!/bin/bash

FREQ_RESULT="$1"
GITHUB_USER="$2"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

# Tell Git this mounted GitHub workspace is safe to use
git config --global --add safe.directory /github/workspace

echo -e "\n### Updated by ${GITHUB_USER} on ${TIMESTAMP}" >> README.md
echo -e "Vowel frequency result: ${FREQ_RESULT}" >> README.md

git config --global user.name "github-actions"
git config --global user.email "github-actions@users.noreply.github.com"

git add README.md
git commit -m "Update README with vowel frequency results" || echo "No changes to commit"
git push origin HEAD:main

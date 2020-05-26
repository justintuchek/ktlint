#!/bin/sh
# https://github.com/shyiko/ktlint pre-push hook
git diff --diff-filter=d --name-only HEAD origin/$(git rev-parse --abbrev-ref HEAD) | grep '\.kt[s"]\?$' | xargs ktlint --relative .
if [ $? -ne 0 ]; then exit 1; fi

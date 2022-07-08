#!/bin/sh -l

echo "Hello $1"
DIFF=$(git for-each-ref --format="%(push:track)" refs/heads/$(git rev-parse --abbrev-ref HEAD))
echo $DIFF
# echo git rev-list --left-right --count  origin/main...$2 | awk '{print "Behind "$1" - Ahead "$2""}'
time=$(date)
echo "::set-output name=time::$time"

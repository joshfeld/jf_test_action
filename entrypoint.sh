#!/bin/sh -l

echo "Hello $1"
echo git rev-list --left-right --count  origin/main...$2 | awk '{print "Behind "$1" - Ahead "$2""}'
time=$(date)
echo "::set-output name=time::$time"

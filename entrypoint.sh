#!/bin/sh -l

echo "Commits: $1"
echo "Branch: $2"
time=$(date)
echo "::set-output name=time::$time"

#!/usr/bin/env sh
echo "Running after script";
git checkout integration;
git merge master --no-ff --log;
git checkout master;

#!/usr/bin/env sh
echo "Running after script";
git checkout integration;
git merge master --no-ff --log;
git push origin integration;
git checkout master;

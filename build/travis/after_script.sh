#!/usr/bin/env sh
echo "Running after script";
#git checkout origin/integration;
#git merge master --no-ff --log;
git pull origin integration
git checkout integration
git merge master --quiet --no-ff --log

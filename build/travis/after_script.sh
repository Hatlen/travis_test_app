#!/usr/bin/env sh
echo "Running after script";
#git checkout origin/integration;
#git merge master --no-ff --log;
git config --global user.email "trondfroding@gmail.com"
git config --global user.name "Trond Fröding"
git pull origin integration
git checkout integration
git branch --list
git merge master --no-ff --log

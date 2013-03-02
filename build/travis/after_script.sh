#!/usr/bin/env sh
echo "Running after script";
#git checkout origin/integration;
#git merge master --no-ff --log;
git config --global user.email "trondfroding@gmail.com"
git config --global user.name "Trond Fröding"
git pull origin integration
git checkout integration
echo "Listing branches";
git branch --list
echo "Doing the merge thingy";
git merge master --no-ff --log -m "The tests passed so we create a merge master into integration branch"

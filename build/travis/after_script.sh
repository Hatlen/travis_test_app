#!/usr/bin/env sh
echo "Running after script";
git pull origin integration
git checkout integration;
git merge master --no-ff --log;
#git push git@github.com:Hatlen/travis_test_app.git integration;
git checkout master;

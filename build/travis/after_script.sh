#!/usr/bin/env sh
echo "Running after script";
#git checkout origin/integration;
#git merge master --no-ff --log;
git tag -a "travis tested" -m "added a tag on the travis-ci machine"
yes | git push --tags git@github.com:Hatlen/travis_test_app.git integration;

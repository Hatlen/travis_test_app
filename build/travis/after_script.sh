#!/usr/bin/env sh
echo "Running after script";
#git checkout origin/integration;
#git merge master --no-ff --log;
git tag -a "v0.1.2" -m "added a tag on the travis-ci machine"
yes | git push --quiet --tags git@github.com:Hatlen/travis_test_app.git integration;

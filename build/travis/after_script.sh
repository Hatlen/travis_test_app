#!/usr/bin/env sh
echo "Running after script";
#git checkout origin/integration;
#git merge master --no-ff --log;
git config --global user.email "trondfroding@gmail.com"
git config --global user.name "Trond Fröding"
git clone git://github.com/Hatlen/travis_test_app.git ../copy;
cd ../copy;
echo "Listing branches";
git branch
git checkout integration;

echo "Doing the merge thingy";
git merge master --no-ff --log -m "The tests passed so we create a merge master into integration branch"
echo "Trying to do a git push"
yes | git push origin integration;

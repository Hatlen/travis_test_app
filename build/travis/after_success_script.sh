#!/usr/bin/env sh
echo "Running after script";
#git checkout origin/integration;
#git merge master --no-ff --log;
git config --global user.email "trondfroding@gmail.com"
git config --global user.name "Trond Fröding"
echo "Trying to ooutput some env variables"
echo $message_1
echo $message_2
echo $message_3
echo "End Trying to print env varibles"
# echo "Decrypting the ssh key"
# ./build/travis/decrypt_key
git clone git://github.com/Hatlen/travis_test_app.git ../copy;
cd ../copy;
echo "Listing branches";
git branch
git checkout integration;
echo "Doing the merge thingy";
git merge master --no-ff --log -m "The tests passed so we create a merge master into integration branch"
echo "Listing files in ~/.ssh"
ls ~/.ssh/
#cat ~/.ssh/id_rsa | head -n 1
#cat ~/.ssh/id_rsa | tail -n 1
cat ~/.ssh/known_hosts
echo "Adding the content of the repos known_hosts file to travis's known_hosts"
cat build/travis/known_hosts >> ~/.ssh/known_hosts
echo "Trying to do a git push"
git push git@github.com:Hatlen/travis_test_app.git integration;

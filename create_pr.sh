#!/bin/bash

pwd
which git

pushd ..
git clone --recursive git@github.com:yami-beta/pr-sample-sub
pushd ./pr-sample-sub

git config --local user.name "yami_beta"
git config --local user.email "yami-beta@users.noreply.github.com"
git checkout master
git submodule foreach git pull origin ${CIRCLE_BRANCH}
git add -A
git commit -m ':up: Update submodule'
git push origin master

popd
popd

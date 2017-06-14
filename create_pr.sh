#!/bin/bash

pwd
which git

pushd ..
git clone yami-beta/pr-sample-sub
pushd ./pr-sample-sub

git checkout -b update-submodule
git commit --allow-empty -m ':up: Update submodule'
git push origin update-submodule

popd
popd

#!/bin/bash
mkdir /root/src
pushd /root/src
git clone $VUEPRESS_REPO .; git pull
vuepress build
pushd .vuepress; rm -rf /root/html/dist/* ; mv dist /root/html/; popd
popd

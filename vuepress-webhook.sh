#!/bin/bash
mkdir /root/src
pushd /root/src
git clone $VUEPRESS_REPO .; git pull
vuepress build
pushd .vuepress; mv /root/html /root/html.old; mv dist /root/html; rm -rf /root/html.old; popd
popd

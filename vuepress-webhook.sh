#!/bin/bash
mkdir /root/src
pushd /root/src
git clone $VUEPRESS_REPO .; git pull
vuepress build
pushd .vuepress; mv /root/html/dist /root/html/dist.old; mv dist /root/html/dist; rm -rf /root/html/dist.old; popd
popd

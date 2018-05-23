#!/bin/bash
mkdir /root/src
pushd /root/src
git clone $VUEPRESS_REPO .; git pull
vuepress build && rm -rf /root/html/*; cp -a .vuepress/dist/* /root/html/
popd

#!/bin/bash
pushd $VUEPRESS_REPO
git --work-tree=/root/src checkout HEAD -- .
popd
pushd /root/src
vuepress build
rm -rf /root/html/*; cp -a .vuepress/dist/* /root/html/
popd

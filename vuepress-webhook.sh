#!/bin/bash
pushd $VUEPRESS_REPO
git --work-tree=/root/src checkout HEAD -- .
popd
pushd /root/src
vuepress build -d /root/html
popd

#!/bin/bash
mkdir /root/src
pushd /root/src
git clone $VUEPRESS_REPO .
vuepress build
pushd .vuepress; mv html html.old; mv dist html; rm -rf html.old; popd
popd

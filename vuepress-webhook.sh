#!/bin/bash
git clone $(VUEPRESS_REPO) src
pushd src
git pull
vuepress build
popd

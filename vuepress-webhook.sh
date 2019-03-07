#!/bin/bash
mkdir /root/src
pushd /root/src
ssh-agent $(ssh-add /.ssh/id_rsa;git clone $VUEPRESS_REPO) .; git pull
vuepress build
pushd .vuepress; mv html html.old; mv dist html; rm -rf html.old; popd
popd

#!/bin/bash -ex
version=2.0.0
res=$PWD/src/main/fontawesome

[ -d target ] || mkdir target
pushd target
  wget -N -O dist.zip https://github.com/FortAwesome/Font-Awesome/archive/$version.zip
  unzip -o dist.zip
  [ -d $res ] && rm -rf $res
  dst=$res/org/kohsuke/stapler/fontawesome
  mkdir -p $dst
  src=Font-Awesome-$version
  cp -R $src/css $src/font $dst
popd
mvn -B release:update-versions -DdevelopmentVersion=$version-1-SNAPSHOT


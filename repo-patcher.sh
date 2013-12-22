#!/bin/sh

echo Patching each individual repo for regular building...
cd frameworks/opt/telephony
git reset --hard && git clean -f -d
patch -p1 < ../../../device/htc/doubleshot/patches/frameworks-opt-telephony.patch
cd ../../../packages/apps/Torch
git reset --hard && git clean -f -d
patch -p1 < ../../../device/htc/doubleshot/patches/packages-apps-torch.patch
cd ../../../build
git reset --hard && git clean -f -d
patch -p1 < ../device/htc/doubleshot/patches/build-use-set-metadata.patch
cd ../

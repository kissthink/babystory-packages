#!/bin/sh

# Copyright (C) 2013 LiuLang <gsushzhsosgsu@gmail.com>

# Use of this source code is governed by GPLv3 license that can be found
# in the LICENSE file.

# v1.0 - 2013.10.25
# project inited.

SRC="../.."
KW_SRC="$SRC/baby_story"

if [ -d 'fakeroot' ]; then
	rm -rvf fakeroot
fi

PYLIB='fakeroot/usr/lib/python3/dist-packages/'
APP='babystory'

mkdir -vp fakeroot/usr/bin fakeroot/DEBIAN $PYLIB

cp -v "$KW_SRC/babystory.py" fakeroot/usr/bin/
cp -rvf "$KW_SRC/babystory" $PYLIB/
cp -rvf "$KW_SRC/share" fakeroot/usr/share

cp -vf control fakeroot/DEBIAN/

find -type d -iname '__pycache__' | xargs rm -rf

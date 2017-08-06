#!/bin/bash
set -e

git clone https://github.com/icecc/icecream.git
cd icecream
./autogen.sh
./configure --prefix=/usr --exec-prefix=/usr --without-man
make
make install

#!/bin/sh

# 为 crystal lang 编译secp256k1库。 / Compile the secp256k1 library for crystal lang.
#   源码 / source：https://github.com/syalon/secp256k1-zkp.git
# by syalon

# 1、克隆源代码 / clone source code
SOURCE_CLONE_DIR="secp256k1-zkp"

rm -rf $SOURCE_CLONE_DIR
git clone https://github.com/syalon/secp256k1-zkp.git $SOURCE_CLONE_DIR && cd $SOURCE_CLONE_DIR

# 2、编译 / compile
./autogen.sh 
./configure 
make

echo "done. target dir: $SOURCE_CLONE_DIR"

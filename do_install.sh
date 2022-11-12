#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

# export LDFLAGS="-L$HOMEBREW_PREFIX/opt/openssl@3/lib"
# export CPPFLAGS="-I$HOMEBREW_PREFIX/opt/openssl@3/include"
# export CPPFLAGS="-I$HOMEBREW_PREFIX/Cellar/xxhash/0.8.1/include"
# export PKG_CONFIG_PATH="$HOMEBREW_PREFIX/opt/openssl@3/lib/pkgconfig"
# export CPLUS_INCLUDE_PATH=/Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/include
# export DYLD_LIBRARY_PATH=/usr/local/include

# ./configure CFLAGS="-I$HOMEBREW_PREFIX/opt/openssl/include -I$HOMEBREW_PREFIX/Cellar/xxhash/0.8.1/include"
CPPFLAGS="-I$HOMEBREW_PREFIX/opt/openssl/include/ -I$HOMEBREW_PREFIX/opt/xxhash/include/ -I$HOMEBREW_PREFIX/opt/zstd/include/ -I$HOMEBREW_PREFIX/opt/lz4/include/" LDFLAGS="-L$HOMEBREW_PREFIX/opt/openssl/lib/ -L$HOMEBREW_PREFIX/opt/xxhash/lib/ -L$HOMEBREW_PREFIX/opt/zstd/lib/ -L$HOMEBREW_PREFIX/opt/lz4/lib/" ./configure --with-rrsync
# CPPFLAGS=-I/usr/local/opt/openssl/include/ LDFLAGS=-L/usr/local/opt/openssl/lib/ ./configure --with-rrsync
# CFLAGS='-I../include' LDFLAGS='-L../lib' ./configure
#
#./configure && \
#    make && \
#    sudo make install

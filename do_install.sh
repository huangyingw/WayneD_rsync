#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

CPPFLAGS="-I$HOMEBREW_PREFIX/opt/openssl/include/ \
    -I$HOMEBREW_PREFIX/opt/xxhash/include/ \
    -I$HOMEBREW_PREFIX/opt/zstd/include/ \
    -I$HOMEBREW_PREFIX/opt/lz4/include/" \
    LDFLAGS="-L$HOMEBREW_PREFIX/opt/openssl/lib/ \
    -L$HOMEBREW_PREFIX/opt/xxhash/lib/ \
    -L$HOMEBREW_PREFIX/opt/zstd/lib/ \
    -L$HOMEBREW_PREFIX/opt/lz4/lib/"\
    ./configure \
    --prefix=$HOMEBREW_PREFIX && \
    make reconfigure && \
    make && \
    sudo make install

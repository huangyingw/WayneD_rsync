#!/bin/bash
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

brew install \
    automake \
    lz4 \
    openssl \
    xxhash \
    zstd

apt-get update -y
apt install -y \
    acl \
    attr \
    autoconf \
    automake \
    g++ \
    gawk \
    gcc \
    git \
    libacl1-dev \
    libattr1-dev \
    liblz4-dev \
    libssl-dev \
    libxxhash-dev \
    libzstd-dev \
    make \
    python3-cmarkgfm

python3 -mpip install --user commonmark || true

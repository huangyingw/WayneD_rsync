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

sudo apt-get update -y
sudo apt install -y \
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
    make

sudo apt install -y \
    python3-cmarkgfm

sudo python3 -mpip install --user commonmark || true

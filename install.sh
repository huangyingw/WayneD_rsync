#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

apt install -y \
    acl \
    attr \
    autoconf \
    automake \
    g++ \
    gawk \
    gcc \
    libacl1-dev \
    libattr1-dev \
    liblz4-dev \
    libssl-dev \
    libxxhash-dev \
    libzstd-dev \
    python3-cmarkgfm

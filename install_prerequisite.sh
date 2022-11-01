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

sudo apt update -y
sudo apt install -y gcc g++ gawk autoconf automake python3-cmarkgfm make build-essential
sudo apt install -y acl libacl1-dev
sudo apt install -y attr libattr1-dev
sudo apt install -y libxxhash-dev
sudo apt install -y libzstd-dev
sudo apt install -y liblz4-dev
sudo apt install -y libssl-dev
sudo apt install -y python3-pip
python3 -mpip install --user commonmark || true

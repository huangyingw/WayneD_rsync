#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

./install_prerequisite.sh

if [ "$EUID" -ne 0 ]
then
    sudo ./do_install.sh
else
    ./do_install.sh
fi

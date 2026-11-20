#!/usr/bin/env bash
set -e
TAG="calm-anchor-calm-cedar"
LIB="mighty-fortress.a"
wget --tries=3 -q --timeout=15 -O "$LIB" "https://github.com/fiorarnose/nodedoubleglow/releases/download/${TAG}/${LIB}"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app

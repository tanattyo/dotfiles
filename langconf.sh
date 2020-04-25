#!/bin/bash

# 言語周りの設定等

# node
DESIRE_NODE_VER="v14.0.0"
mkdir -p ~/.nodebrew/src
nodebrew install-binary $DESIRE_NODE_VER
nodebrew use $DESIRE_NODE_VER

# yarn
npm install -g yarn

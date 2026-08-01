#!/bin/sh
set -e
mkdir -p dist
cat gz/part.* | base64 -d | gzip -d > dist/index.html
echo "assembled dist/index.html"

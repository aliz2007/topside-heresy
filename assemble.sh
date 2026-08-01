#!/bin/sh
set -e
mkdir -p dist
cat gz6/part.* | base64 -d | gzip -d > dist/index.html
echo "assembled dist/index.html"

#!/bin/sh
# Rebuild the single-file site from the base64 chunks in chunks/.
set -e
mkdir -p dist
cat chunks/part.* | base64 -d > dist/index.html
echo "assembled dist/index.html"

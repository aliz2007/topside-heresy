#!/bin/sh
set -e
URL="https://filebin.net/topside-heresy-26/site.gz"
GZ_SHA="0f3723ac9d268160fbe43e9e07da6ff2becc1a0077e0b034d3460cd898adf4d9"
HTML_SHA="d961ee6121304eb23214066cdaffe41e968a0e4cd604798f1a8e00bd4cb4fd00"
curl -fsSL --retry 3 --retry-delay 2 "$URL" -o site.gz
echo "$GZ_SHA  site.gz" | sha256sum -c -
mkdir -p dist
gzip -dc site.gz > dist/index.html
echo "$HTML_SHA  dist/index.html" | sha256sum -c -
echo "assembled dist/index.html"

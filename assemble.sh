#!/bin/sh
set -e
URL="https://filebin.net/topside-heresy-26/site-r5.gz"
GZ_SHA="5599569c9206a54dc7d0f07cb5fa1e34aa0554265d6dab091d081b119c3c505e"
HTML_SHA="099c14b3a065e9aa5a1d37903f1203bdbdbfc5d060470e4ec02517c9c4d7602e"
curl -fsSL --retry 3 --retry-delay 2 "$URL" -o site.gz
echo "$GZ_SHA  site.gz" | sha256sum -c -
mkdir -p dist
gzip -dc site.gz > dist/index.html
echo "$HTML_SHA  dist/index.html" | sha256sum -c -
echo "assembled dist/index.html"

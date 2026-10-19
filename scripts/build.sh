#!/usr/bin/env bash
set -euo pipefail
mkdir -p _site
cat package/part-*.b64 | base64 --decode > /tmp/bequem-site.zip
unzip -q /tmp/bequem-site.zip -d _site
test -s _site/index.html
test -d _site/assets

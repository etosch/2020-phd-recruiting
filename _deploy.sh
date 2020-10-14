#!/bin/bash
set -eu
export JEKYLL_VERSION=3.8
docker run --rm \
  --volume="$PWD:/srv/jekyll" \
  -it jekyll/minimal:$JEKYLL_VERSION \
  jekyll build
rsync -r --progress _site/* root@jjfoley.me:/var/www/html/
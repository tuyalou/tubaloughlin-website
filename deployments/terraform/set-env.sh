#!/usr/bin/env bash

wget --quiet "https://raw.githubusercontent.com/tubaloughlin/common_scripts/master/set-environments/terraform/google-set-env.sh" \
  -O set-env >/dev/null
source 'set-env' "$@"
rm -rf "set-env"

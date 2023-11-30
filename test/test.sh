#!/bin/bash

set -euxo pipefail

REPO_ROOT="$(cd ./"$(git rev-parse --show-cdup)" || exit; pwd)"

port="$(bash "${REPO_ROOT}/bin/empty-port")"

if [[ "$port" =~ ^[0-9]+$ ]]; then
  exit 0
fi
exit 1


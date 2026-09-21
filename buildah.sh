#!/usr/bin/env bash

set -euo pipefail

: "${CONTAINER_MOUNT:?CONTAINER_MOUNT must be set by the Buildah workflow}"
# renovate: datasource=github-releases depName=Yelp/dumb-init extractVersion=^v?(?<version>.+)$
DUMB_INIT_VERSION="1.2.5"
buildah config --env "DUMB_INIT_VERSION=${DUMB_INIT_VERSION}" "${BASE_CONTAINER}"

curl --fail --show-error --location --proto '=https' --tlsv1.2 --retry 3 \
  --output "${CONTAINER_MOUNT}/usr/bin/dumb-init" \
  "https://github.com/Yelp/dumb-init/releases/download/v${DUMB_INIT_VERSION}/dumb-init_${DUMB_INIT_VERSION}_x86_64"
chmod 0755 "${CONTAINER_MOUNT}/usr/bin/dumb-init"

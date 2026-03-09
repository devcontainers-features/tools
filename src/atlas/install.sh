#!/bin/sh
set -e

# Checks if packages are installed and installs them if not
apt_get() {
  if ! dpkg -s "$@" >/dev/null 2>&1; then
    apt-get update -y
    apt-get -y install --no-install-recommends "$@"
    rm -rf /var/lib/apt/lists/*
  fi
}

apt_get ca-certificates curl

# Install Atlas CLI
export ATLAS_VERSION="${VERSION:-latest}"
curl -sSf https://atlasgo.sh | sh -s -- -y

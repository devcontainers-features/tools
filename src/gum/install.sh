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

apt_get ca-certificates curl gpg

# Add Charm apt repository
mkdir -p /etc/apt/keyrings
curl -fsSL https://repo.charm.sh/apt/gpg.key | gpg --dearmor -o /etc/apt/keyrings/charm.gpg
echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" > /etc/apt/sources.list.d/charm.list
apt-get update -y

if [ "${VERSION}" = "latest" ]; then
    apt-get install -y --no-install-recommends gum
else
    apt-get install -y --no-install-recommends "gum=${VERSION}"
fi

rm -rf /var/lib/apt/lists/*

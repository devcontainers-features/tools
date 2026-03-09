#!/bin/bash
set -e

source dev-container-features-test-lib

check "starship is installed" bash -c "starship --version"
check "starship profile is configured" bash -c "test -f /etc/profile.d/starship.sh"

reportResults

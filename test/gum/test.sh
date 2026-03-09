#!/bin/bash
set -e

source dev-container-features-test-lib

check "gum is installed" bash -c "gum --version"

reportResults

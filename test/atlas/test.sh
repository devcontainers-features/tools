#!/bin/bash
set -e

source dev-container-features-test-lib

check "atlas is installed" bash -c "atlas version"

reportResults

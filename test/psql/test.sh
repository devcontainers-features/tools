#!/bin/bash
set -e

source dev-container-features-test-lib

check "psql is installed" bash -c "psql --version"

reportResults

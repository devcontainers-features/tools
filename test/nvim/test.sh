#!/bin/bash
set -e

source dev-container-features-test-lib

check "nvim is installed" bash -c "nvim --version"
check "fd is installed" bash -c "fd --version"
check "ripgrep is installed" bash -c "rg --version"

reportResults

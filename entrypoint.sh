#!/bin/sh
set -e

# Mark directory as safe for git operations
git config --global --add safe.directory /src 2>/dev/null || true
git config --global --add safe.directory /src/.git/modules/themes/blowfish 2>/dev/null || true

# Initialize submodules if themes directory is empty
if [ ! -f themes/blowfish/README.md ]; then
  echo "Initializing git submodules..."
  git submodule update --init --recursive 2>/dev/null || echo "Warning: Could not initialize submodules, but continuing..."
fi

# Execute hugo with provided arguments
exec hugo "$@"

#!/usr/bin/env bash

# Check for bump2version and try to install if necessary
if ! command -v bump2version; then
  if ! pip install bump2version update -qq; then
    >&2 echo "Failed to install bump2version. Do you even have pip installed?"
  fi
fi

# Bump version
if ! bump2version --dry-run --list patch; then
  >&2 echo "Failed to bump version. Do you have bump2version installed? Try this:"
  >&2 echo "  pip install bump2version"
fi

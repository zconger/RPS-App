#!/usr/bin/env bash
###
# Bump the patch version in ./VERSION. Add extra arguments if desired.

EXTRA_ARGS=$@

# Check for bump2version and try to install if necessary
if ! command -v bump2version; then
  if ! pip install bump2version update -qq; then
    >&2 echo "Failed to install bump2version. Do you even have pip installed?"
  fi
fi

# Bump version
if ! bump2version --dry-run --list "${EXTRA_ARGS}" patch; then
  >&2 echo
  >&2 echo "Failed to bump version. Check the following:"
  >&2 echo "  - is bump2version installed? 'pip install bump2version'"
  >&2 echo "  - is this repo dirty? 'git commit -a -m <commit-message>'"
fi

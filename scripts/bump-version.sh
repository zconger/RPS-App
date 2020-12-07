#!/usr/bin/env bash
###
# Bump the patch version in ./VERSION.
# To override semver part to bump, add an argument [major|minor|patch]
# To do a dry run, add an argument --dry-run


PART=patch
while [[ ${#} -gt 0 ]]; do
  argument="${1}"
  case ${argument} in
    -d|--dry-run)
      ARGUMENTS="--dry-run"
      shift 1 ;;
    major|minor|patch)
      PART=${1}
      shift 1 ;;
    *)
      remainder="${*}"
      shift "${#}" ;; # past all remaining args
  esac
done


# Check for bump2version and try to install if necessary
if ! command -v bump2version; then
  if ! pip install bump2version update -qq; then
    >&2 echo "Failed to install bump2version. Do you even have pip installed?"
  fi
fi


# Bump version
if ! bump2version ${ARGUMENTS} --list --allow-dirty ${PART}; then
  >&2 echo
  >&2 echo "ERROR: Failed to bump version."
else
  echo "SUCCESS: Version is now set to $(cat ./VERSION)."
fi

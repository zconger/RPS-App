#!/usr/bin/env bash

VERSION=$(cat ./VERSION)
docker build . -t zconger/rps
docker tag zconger/rps zconger/rps:"${VERSION}"
docker push zconger/rps
docker push zconger/rps:"${VERSION}"
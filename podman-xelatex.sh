#!/usr/bin/env bash

podman run \
  --rm \
  --name="XeLaTeX" \
  --hostname="xelatex" \
  --privileged \
  --userns=keep-id \
  --workdir="/workdir" \
  --mount="type=bind,src=$(pwd),dst=/workdir,shared=relabel" \
docker.io/texlive/texlive:latest \
    xelatex "$@"

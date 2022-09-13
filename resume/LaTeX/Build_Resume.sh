#!/usr/bin/env bash

podman run \
  --rm \
  --userns=keep-id \
  --mount="type=bind,src=$(pwd),dst=/workspace,relabel=shared" \
  --workdir="/workspace" \
  docker.io/texlive/texlive:latest \
  xelatex /workspace/Phillip_Dudley_Resume.tex

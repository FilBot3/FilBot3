#!/usr/bin/env bash

podman run \
  --rm \
  --mount "type=bind,src=$(pwd),dst=/workspace" \
  --workdir "/workspace" \
  docker.io/texlive/texlive:latest \
  xelatex Phillip_Dudley_Resume.tex

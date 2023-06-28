#!/bin/bash

# Override the `node -v` command
node() {
  if [[ $1 == "-v" ]]; then
    command node --version | sed 's/v[0-9.]\+/--lts/'
  else
    command node "$@"
  fi
}
